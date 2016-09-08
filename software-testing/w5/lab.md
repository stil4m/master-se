# Lab 5 Software Specification and Testing

#### 1\. Modify the sudoku solver to support NRC constraints

We did it together but Nikki was the fastest together with an addition from Paco. I was concentrating on a more beautiful solution and did not make any progress. I'll have to keep in mind that I have to come up with a solution and then make it pretty.

#### 2\. Rewrite the sudoku implementation to be more generic

_Performed by Nikki and Jasper_

#### 3\. Generate minimal sudoku problems and test these <small>Together with Paco</small>

Easy exercise. Identifying the constraints (removing one results in a ambiguous problem and the problem itself is not ambiguous).

#### 4\. Write a generator for 3, 4 and 5 empty Sudoku blocks <small>Together with Paco</small>

Was pretty easy to show together with a not so easy Stack Overflow post.

#### 5\. Extend the solution from assignment 1 to support NRC Sudokus

_Performed by Paco_

#### 6\. Implement a Sudoku solver that identifies difficulty.

##### Paco and Nikki

They have written an implementation to identify a difficulty level based on the risk of the guesses to be made.

##### Myself

I implemented a program that reasons about the difficulty of the logical actions performed by the user (or software). These steps could be given different constant weights and the sum of all difficulties would be the difficulty of the problem.

#### 6\. Compute the minimum hints a NRC Sudoku.

_Performed Jasper_
