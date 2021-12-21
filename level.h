#ifndef __LEVEL_H
#define __LEVEL_H

#include <stdint.h>
#include "virion.h"

typedef struct __level
{
  uint8_t  starting_num_virions;
  uint8_t  max_virions;

  int16_t  starting_velocity;

  uint8_t  border_colour;

  uint8_t immune_frames;

  void   (*draw_frame)(void);
} LEVEL;


void apply_virion_logic( LEVEL*, VIRION* );

#endif
