---
tags:
languages:
resources:
---
# Ruby Baby

## Outline

Build a Baby class that makes sure every baby that is born is saved and accessible.

Start with the instance method to save a baby to the class variable.

Then make sure that all babies are saved when they are born.

Then build the class method to return all babies

Then a class method to return the count of babies.

#save
#new
  must call save

Baby.all
  returns all babies
Baby.count
  returns baby count

## Note on Tests

Make use of class_variable_set/get to reset the Baby.all variable in tests adn to introspect on class variable before they implement all (like in the tests for save)

stub that Baby.any_instance should receive save for the new must call save test and make sure that the instance is in @@all
