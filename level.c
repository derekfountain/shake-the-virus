/*
 * Shake the Virus, a ZX Spectrum game.
 * Copyright (C) 2022 Derek Fountain
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#include <stdint.h>
#include <stdlib.h>
#include <arch/zx.h>
#include "level.h"
#include "levels.h"
#include "main.h"
#include "int.h"
#include "swarm.h"
#include "print_str.h"
#include "timer.h"
#include "sound.h"

uint8_t  current_frame;
uint16_t frames_before_change;

void init_level( LEVEL *level )
{
  /*
   * Reset timer. Start at 1, not zero, so we don't get
   * an immediate update on the first loop
   */
  interrupt_service_required_100ms = 1;

  zx_border( level->border_colour );

  SET_SWARM_SIZE( level->starting_num_virions );
  current_frame        = 0;
  frames_before_change = 0;
 
  (level->level_handler)( level, PHASE_INIT );

  draw_timer( 1 );

  if( level->caption )
  {
    roll_str(11,level->caption);
  }

  return;
}

void finalise_level( LEVEL *level )
{
  // (level->level_handler)( level, PHASE_FINALISE );
  free( level->level_data );

}

void apply_virion_logic( LEVEL *level, VIRION *v )
{
  if( ! v->active )
    return;

  if( v->x_i < 0 || v->x_i > 255
      ||
      v->y_i < 0 || v->y_i > 183 )
    return;

  uint8_t attribute = *(zx_pxy2aaddr(v->x_i, v->y_i));
  if( (attribute & BRIGHT) == 0 )
    return;

  if( attribute == (PAPER_RED|BRIGHT) )
  {
    /* If virion isn't immune deactivate it */
    if( !v->immunity_start )
    {
      /* Deactivate this one */
      deactivate_virion( v );
      kill_virion_sound();

      /* For when/if it's reactivated */
      change_immunity( v, MAKE_NON_IMMUNE );
    }
  }
  else if( attribute == (PAPER_GREEN|BRIGHT) )
  {
    /* If virion isn't immune, trigger an inactive one back to life */
    if( !v->immunity_start )
    {
      if( GET_ACTIVE_SWARM_SIZE < level->max_virions )
      {
	/* Active any currently inactive virion in the swarm, it starts off immune */
	VIRION *reactivated_virion = activate_virion_in_swarm( START_IMMUNE );
	if( reactivated_virion != INVALID_VIRION_PTR )
	{
	  random_reappear_virion( reactivated_virion );
	  reactivate_virion_sound();
	}
      }
    }
  }
  else if( attribute == (PAPER_BLUE|BRIGHT) )
  {
    random_reappear_virion( v );
    relocate_virion_sound();
  }
  else if( attribute == (PAPER_BLACK|BRIGHT) )
  {
    /*
     * I'd prefer a better "bounce" dynamic, but it's expensive to work out
     * where the virion has come from, how it's hit the black block (i.e.
     * which side of the cell) and hence which direction it should bounce
     * off in. Putting it back where it came from pointing the other way
     * is best I can do.
     */
    v->velocity_x = -(v->velocity_x);	
    v->velocity_y = -(v->velocity_y);	
    v->x_i        = v->previous_x_i;
    v->y_i        = v->previous_y_i;
  }
}

void update_level( LEVEL *level )
{
  if( interrupt_service_required_100ms )
  {
    interrupt_service_required_100ms = 0;
    (level->level_handler)( level, PHASE_UPDATE );
  }
}
