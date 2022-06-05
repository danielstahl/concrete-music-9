#/bin/bash

STAGE_DIR="/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage"
INPUT_AUDIO="$STAGE_DIR/concreteMusic9Score.caf"


sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_resonator_1_1.caf" remix 1 2
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_resonator_1_2.caf" remix 3 4

sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_resonator_2_1.caf" remix 5 6
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_resonator_2_2.caf" remix 7 8

sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_resonator_3_1.caf" remix 9 10
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_resonator_3_2.caf" remix 11 12

sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_chest_1_1.caf" remix 13 14
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_chest_1_2.caf" remix 15 16
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_chest_1_3.caf" remix 17 18
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_chest_1_4.caf" remix 19 20
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_chest_1_5.caf" remix 21 22

sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_door_1_1.caf" remix 23 24
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_door_1_2.caf" remix 25 26
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_door_1_3.caf" remix 27 28
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_door_1_4.caf" remix 29 30
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_door_1_5.caf" remix 31 32

sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_1_1.caf" remix 33 34
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_1_2.caf" remix 35 36
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_1_3.caf" remix 37 38
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_1_4.caf" remix 39 40
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_1_5.caf" remix 41 42

sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_2_1.caf" remix 43 44
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_2_2.caf" remix 45 46
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_2_3.caf" remix 47 48
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_2_4.caf" remix 49 50
sox -S "$INPUT_AUDIO" "$STAGE_DIR/concreteMusic9_hit_2_5.caf" remix 51 52
