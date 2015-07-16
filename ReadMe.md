#Conway's Game of Life

The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970. The “game” is a zero-player game, meaning that its evolution is determined by its initial state, requiring no further input. One interacts with the Game of Life by creating an initial configuration and observing how it evolves.

#Rules

The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, alive or dead. Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

Any live cell with fewer than two live neighbours dies, as if caused by under-population.

Any live cell with two or three live neighbours lives on to the next generation.

Any live cell with more than three live neighbours dies, as if by overcrowding.

Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

The initial pattern constitutes the seed of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed—births and deaths occur simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the preceding one). The rules continue to be applied repeatedly to create further generations.

Design The World can be represented by a grid. The people inside this world can be represented as cells in a grid. The cells can be either dead or alive based on the status of its 8 neighbours and the rules of the game! Grid is a 2D array with each element of “cell” type.

#Setup

To use this project as a codebase simply clone the project to your local folder. Use the following steps:

Open the Terminal
'''   
type: *mkdir* desired_directory

cd desired_directory

*git pull* https://github.com/aditya-sanghi/game-of-life-16jul.git
'''

#Gems and Dependencies

go to the directory in the terminal and type <i>bundle install</i> to install the gens mentioned in Gemfile in your local machine

#Tests

Download the *rspecs* gem to run tests on the code in the lib folder

Go to the directory:* cd game-of-life-16jul *

use rake: *rake*
