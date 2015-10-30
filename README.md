# Ruby Remembrance Lab

## Objectives

1. Use a class variable to keep track of every instance of a class that is created. 
2. Write a class method to access the list of all instances of a class, stored in a class variable. 

## Overview

The government has decided to start tracking every new puppy that is born, just like we track every new child who is born with a birth certificate. Because you're such a notoriously skilled programmer, you've been hired by the newly minted United States Department of Canines to write a program that will do just that. 

You need to write a program that stores each new puppy that is born. You will write a `Dog` class that initializes with a name and also stores each new instance of `Dog` that is instantiated. 

## Instructions

Code your solution in `lib/dog.rb`

This lab is primarily test-driven. Run the test suite with the `learn` command and follow the test output to get started. 

A few things to keep in mind:

* You'll need to set a class variable equal to an empty array inside your class. We suggest calling that variable `@@all`. 
* This array is the storage container for each instance of a `Dog` that gets created. In other words, every puppy that is born should get pushed into this array at the moment of instantiation––in the `#initialize` method! Use the `self` keyword inside the `#initialize` method to refer to the new dog you are trying to store in your `@@all` array. 
* You will need to write a class method, `.all`, that iterates over all of the individual dogs stored in the `@@all` array and `puts` out their name to the terminal. 


