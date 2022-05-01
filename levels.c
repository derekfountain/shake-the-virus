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
#include <string.h>
#include <arch/zx.h>
#include "main.h"
#include "level.h"
#include "levels.h"
#include "levels_01234567.h"
#include "levels_primitives.h"

LEVEL levels[] = 
{
  /* Training levels */
  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level0_frame),
    NAMED_ARG("Caption",              "  Red cells kill the virus!     "),
    NAMED_ARG("Level data",           NULL),
  },
  {
    NAMED_ARG("Starting num virions", 8),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level1_frame),
    NAMED_ARG("Caption",              "Green cells make things worse!  "),
    NAMED_ARG("Level data",           NULL),
  },
  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level2_frame),
    NAMED_ARG("Caption",              " Black cells get in the way!    "),
    NAMED_ARG("Level data",           NULL),
  },
  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level3_frame),
    NAMED_ARG("Caption",              "  Blue cells confuse things!    "),
    NAMED_ARG("Level data",           NULL),
  },

  /* Bit harder */
  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_MAGENTA),
    NAMED_ARG("Level handler",        draw_level4_frame),
    NAMED_ARG("Caption",              "         Got it? OK!            "),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_MAGENTA),
    NAMED_ARG("Level handler",        draw_level5_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_MAGENTA),
    NAMED_ARG("Level handler",        draw_level6_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

    {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_MAGENTA),
    NAMED_ARG("Level handler",        draw_level7_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },


  /* Introduce moving blocks */
  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level8_frame),
    NAMED_ARG("Caption",              "Oh, and sometimes things move!  "),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level9_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level10_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level11_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level12_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },
  /* Play testing suggests I'm just hitting the red at this point, so 5 more levels as the timer stands */

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_MAGENTA),
    NAMED_ARG("Level handler",        draw_level13_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

    {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_MAGENTA),
    NAMED_ARG("Level handler",        draw_level14_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level15_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },

  {
    NAMED_ARG("Starting num virions", MAX_IN_SWARM),
    NAMED_ARG("Max num virions",      MAX_IN_SWARM),
    NAMED_ARG("Border colour",        INK_BLUE),
    NAMED_ARG("Level handler",        draw_level16_frame),
    NAMED_ARG("Caption",              NULL),
    NAMED_ARG("Level data",           NULL),
  },
};

LEVEL *get_level( uint8_t lev )
{
  return &levels[lev];
}


/* 4 levels with things moving */
typedef struct _level8_data
{
  uint8_t x;
} LEVEL8_DATA;
void draw_level8_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL8_DATA *l_data = level->level_data;

    *(zx_cxy2aaddr(l_data->x,11)) = PAPER_WHITE;
    if( l_data->x++ == 28 )
      l_data->x = 2;
    *(zx_cxy2aaddr(l_data->x,11)) = (PAPER_RED|BRIGHT);
  }
  else if( phase == PHASE_INIT )
  {
    LEVEL8_DATA *ld = (LEVEL8_DATA*)malloc( sizeof(LEVEL8_DATA) );
    level->level_data = ld;

    ld->x = 2;
    *(zx_cxy2aaddr(ld->x,11)) = (PAPER_RED|BRIGHT);
  }
}

typedef struct _level9_data
{
  uint8_t   x;
  uint8_t   y;
  DIRECTION d;
} LEVEL9_DATA;
void draw_level9_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL9_DATA *l_data = level->level_data;

    _2x2( l_data->x, l_data->y, PAPER_WHITE );

    if( l_data->d == DIRECTION_E )
    {
      if( l_data->x++ == 27 )
        l_data->d = DIRECTION_S;
    }
    else if( l_data->d == DIRECTION_S )
    {
      if( l_data->y++ == 18 )
        l_data->d = DIRECTION_W;
    }
    else if( l_data->d == DIRECTION_W )
    {
      if( l_data->x-- == 3 )
        l_data->d = DIRECTION_N;
    }
    else if( l_data->d == DIRECTION_N )
    {
      if( l_data->y-- == 3 )
        l_data->d = DIRECTION_E;
    }

    _2x2( l_data->x, l_data->y, (PAPER_RED|BRIGHT) );

  }
  else if( phase == PHASE_INIT )
  {
    LEVEL9_DATA *ld = (LEVEL9_DATA*)malloc( sizeof(LEVEL9_DATA) );
    level->level_data = ld;

    ld->x = 2;
    ld->y = 2;
    ld->d = DIRECTION_E;
    _2x2( ld->x, ld->y, (PAPER_RED|BRIGHT) );
  }
}


typedef struct _level10_data
{
  uint8_t   x;
  DIRECTION d;
} LEVEL10_DATA;
void draw_level10_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL10_DATA *l_data = level->level_data;

    _5x1( l_data->x, 10, PAPER_WHITE );

    if( l_data->d == DIRECTION_E )
      l_data->x++;
    else
      l_data->x--;

    if( l_data->x == 27 )
    {
      l_data->d = DIRECTION_W;
    }
    else if( l_data->x == 0 )
    {
      l_data->d = DIRECTION_E;
    }

    _5x1( l_data->x, 10, (PAPER_RED|BRIGHT) );
  }
  else if( phase == PHASE_INIT )
  {
    LEVEL10_DATA *ld = (LEVEL10_DATA*)malloc( sizeof(LEVEL10_DATA) );
    level->level_data = ld;

    ld->x = 0;
    ld->d = DIRECTION_E;
    _5x1( ld->x, 10, (PAPER_RED|BRIGHT) );

#include "level10.inc"
  }
}


typedef struct _level11_data
{
  uint8_t   state;
  uint8_t   phase_counter;
} LEVEL11_DATA;
void draw_level11_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL11_DATA *l_data = level->level_data;

    if( ++l_data->phase_counter < 25 )
      return;

    l_data->phase_counter = 0;
    if( ++l_data->state == 3 )
      l_data->state = 0;

    if( l_data->state == 0 )
      _2x2( 15, 10, (PAPER_RED|BRIGHT) );
    else if( l_data->state == 1 )
      _2x2( 15, 10, (PAPER_GREEN|BRIGHT) );
    else
      _2x2( 15, 10, (PAPER_BLUE|BRIGHT) );
  }
  else if( phase == PHASE_INIT )
  {
    LEVEL11_DATA *ld = (LEVEL11_DATA*)malloc( sizeof(LEVEL11_DATA) );
    level->level_data = ld;

    ld->state = 0;
    ld->phase_counter = 0;
    _2x2( 15, 10, (PAPER_RED|BRIGHT) );
  }
}

typedef struct _level12_data
{
  uint8_t   state;
  uint8_t   phase_counter;
} LEVEL12_DATA;
void draw_level12_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL12_DATA *l_data = level->level_data;
    uint8_t block[][2] = { {4,7},{4,14},{4,11},{4,10},{255,255} };

    if( ++l_data->phase_counter < 25 )
      return;

    l_data->phase_counter = 0;
    l_data->state = !l_data->state;

    if( l_data->state == 0 )
      draw_cells( block, (PAPER_GREEN|BRIGHT) );
    else
      draw_cells( block, PAPER_WHITE );
  }
  else if( phase == PHASE_INIT )
  {
    LEVEL12_DATA *ld = (LEVEL12_DATA*)malloc( sizeof(LEVEL12_DATA) );
    level->level_data = ld;

    ld->state = 0;
    ld->phase_counter = 0;
#include "level12.inc"
  }
}

typedef struct _level13_data
{
  uint8_t   phase_counter;
} LEVEL13_DATA;
void draw_level13_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL13_DATA *l_data = level->level_data;

    if( ++l_data->phase_counter < 30 )
      return;

    l_data->phase_counter = 0;

    swap_cells_colours( (PAPER_GREEN|INK_BLACK|BRIGHT), (PAPER_BLACK|INK_BLACK|BRIGHT) );
  }
  else if( phase == PHASE_INIT )
  {
    LEVEL13_DATA *ld = (LEVEL13_DATA*)malloc( sizeof(LEVEL13_DATA) );
    level->level_data = ld;

    ld->phase_counter = 0;
#include "level13.inc"
  }
}

#define L14_TRAIL_LEN 6
typedef struct _level14_data
{
  uint8_t phase_counter;
  uint8_t block_is_green;
  uint8_t i;
} LEVEL14_DATA;
uint8_t l14_trail[][2] = { {12,9},{13,9},{14,9},{15,9},{16,9},{17,9},{18,9},{19,9},
                           {19,10},{19,11},{19,12},
                           {19,13},{18,13},{17,13},{16,13},{15,13},{14,13},{13,13},{12,13},
                           {12,12},{12,11},{12,10},
                         };
void get_trail_entry( int8_t i, uint8_t **result )
{
  if( i < 0 )
    i = 22+i;
  *result = &(l14_trail[i][0]);
}
void draw_level14_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL14_DATA *l_data = level->level_data;

    if( ++l_data->phase_counter == 50 )
    {
      l_data->phase_counter = 0;
      l_data->block_is_green = !l_data->block_is_green;
      swap_cells_colours( (PAPER_GREEN|INK_BLACK|BRIGHT), (PAPER_RED|INK_BLACK|BRIGHT) );
    }

    uint8_t i;
    uint8_t *entry;
    int8_t plot = (int8_t)l_data->i;
    for(i=0;i<L14_TRAIL_LEN;i++)
    {
      get_trail_entry( plot, &entry );
      plot--;
      *(zx_cxy2aaddr(*entry,*(entry+1))) = ( (( l_data->block_is_green ) ? PAPER_RED : PAPER_GREEN)|BRIGHT);
    }

    /* Add a white one to remove the end of the previous trail */
    get_trail_entry( plot, &entry );
    *(zx_cxy2aaddr(*entry,*(entry+1))) = PAPER_WHITE;

    if( ++l_data->i == 22 )
      l_data->i = 0;
  }
  else if( phase == PHASE_INIT )
  {
    LEVEL14_DATA *ld = (LEVEL14_DATA*)malloc( sizeof(LEVEL14_DATA) );
    level->level_data = ld;

    ld->phase_counter =  0;
    ld->block_is_green = 1;
    ld->i              = 0;
#include "level14.inc"
  }
}

typedef struct _level15_data
{
  uint8_t   state;
  uint8_t   phase_counter;
} LEVEL15_DATA;
void draw_level15_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL15_DATA *l_data = level->level_data;

    if( ++l_data->phase_counter < 30 )
      return;

    l_data->phase_counter = 0;
    l_data->state = !l_data->state;

    if( l_data->state == 0 )
    {
    }

  }
  else if( phase == PHASE_INIT )
  {
    LEVEL15_DATA *ld = (LEVEL15_DATA*)malloc( sizeof(LEVEL15_DATA) );
    level->level_data = ld;

    ld->state = 0;
    ld->phase_counter = 0;

    draw_box(0,0,31,22,PAPER_RED|BRIGHT);
  }
}

typedef struct _level16_data
{
  uint8_t   state;
  uint8_t   phase_counter;
} LEVEL16_DATA;
void draw_level16_frame( LEVEL *level, LEVEL_PHASE phase )
{
  if( phase == PHASE_UPDATE )
  {
    LEVEL16_DATA *l_data = level->level_data;

    if( ++l_data->phase_counter < 100 )
      return;

    l_data->phase_counter = 0;
    l_data->state = !l_data->state;

    if( l_data->state == 0 )
    {
      memset( 0x5800, PAPER_WHITE, (32*24) );
#include "level16_0.inc"
    }
    else
    {
#include "level16_1.inc"
    }

  }
  else if( phase == PHASE_INIT )
  {
    LEVEL16_DATA *ld = (LEVEL16_DATA*)malloc( sizeof(LEVEL16_DATA) );
    level->level_data = ld;

    ld->state = 0;
    ld->phase_counter = 0;
#include "level16_0.inc"
  }
}
