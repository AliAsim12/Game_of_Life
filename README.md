# Game_of_Life
Matlab Implementation of conway's game of life 
This code is an implementation of Conway's Game of Life, a cellular automaton simulation. The simulation takes place on a grid of cells, where each cell can be either alive or dead (represented by a value of 1 or 0, respectively). The rules for updating the state of the cells at each iteration are as follows:

Any live cell with fewer than two live neighbors dies, as if by underpopulation.
Any live cell with two or three live neighbors lives on to the next generation.
Any live cell with more than three live neighbors dies, as if by overpopulation.
Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
The code first creates a random grid of cells with a probability of p for each cell to be alive. It then applies the rules of the game in a loop, updating the state of each cell based on the state of its eight neighbors. The updated state of the grid is stored in matrix A, which is then copied back to matrix B to continue the simulation.

During the simulation, the code uses the "spy" function to display the state of the grid as a black-and-white image, where black pixels represent live cells and white pixels represent dead cells. The "drawnow" function is used to update the image on the screen, and the "pause" function is used to introduce a delay of one second between each iteration of the loop.

The simulation continues indefinitely until it is manually interrupted by the user.
