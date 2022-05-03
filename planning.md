# TwO-O-Player Math Game

## Classes

- Game
- Turn
- Question
- Player

## Class Roles

### Player

State:

- lives
- score
- name (Stretch)

Methods:

- to_s
- alive?

### Question

State:

- number1, number2 (hash with integers for keys)
- answer

Methods:

- to_s
- guess?

### Turn

State:

- Question for this turn
- current_player

Methods:

- ask
- guess?

### Game

State:

- Reference to each player

Methods:

- start
- end
