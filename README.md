# Stock Bot
-----
### Description
I am a Stock Bot! Here are my features :)

* Back End Features (Python)

  * 
  * The user may specify the number of empty slots for the board (default is 25)
  
* Shows the solution to the board

  * Utilizes a backtracking algorithm to solve the board 
  * Solution investigates row, column, and 3x3 square to input a valid number

* Uses a GUI to visually show the board and solution

  * User is able to play a game of sudoku by inputting numbers to empty slots
  * User is able to see how backtracking seeks for a solution
  
### Rules
Rules of the Sudoku game in the link below :
https://sudoku.com/how-to-play/sudoku-rules-for-complete-beginners/ 

  1) All slots in red can be altered, select one of the slots to start
  2) Press a number to change the number in the slot, or press clear to restart
  3) If stuck, press the solution button to see how backtracking reaches a solution!
 
![](Images/Example.png)

### Compile and Run
  1) Download folder and move directory to downloaded path
  2) qmake 
  3) make
  4) Look for GUI file and play the game :)
  
### Files
* createpuzzle.h / createpuzzle.cpp

  * C++ header and code that generates a random sudoku board

* mainwindow.h / mainwindow.cpp / mainwindow.ui

  * Uses Qt and C++ to visualize a sudoku board where user can input numbers 
  * Uses Qt and C++ to visualize how backtracking solves the board 
  
* GUI.pro / main.cpp

  * Allows Qt and C++ program to be compiled into a GUI
  
