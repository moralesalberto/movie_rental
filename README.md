movie_rental
============

Exercise from Refactoring book, Jay Fields. Wrote the initial example with ruby, rspec and guard to practice refactoring. 

If you want to follow along start with the branch_0.

### Overview of the program
This is a program to calculate and print a statement of a customer's charges at a video store.

The program is told which movies a customer rented and for how long. It then calculates the charges, which depend on 
how long the movie is rented, and identifies the type of movie.

There are three kinds of movies: regular, childrens and new releases. In addition to calculating charges, the statement
 also computes the frequent renter points, which vary depending on whether the film is a new release.

 Three classes represent this problem: Customer, Movie and Rental.


### Refactoring Exercise
1. The video store owner now wants to print the statement in html format.

2. The vidoe store owner wants to change the way they classify movies, but they haven't decided yet on the change they are
going to make.


