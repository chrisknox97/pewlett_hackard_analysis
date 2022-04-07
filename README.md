# Employee Database with SQL

## Overview of Analysis

### To uncover the number of retiring employees at Pewlett-Hackard so that they may anticipate and fill job vacanies; as well as to determine whether they employ enough employees to mentor the next genertaion, thus avoiding a decline in productivity and efficiency. 

## Pewlett Hackard Results

### Retiring Employees by Title

By combining Data within Pewlett-Hackard's ``.CSV`` files for ``Employees`` and ``Titles`` we were able to create a single Table from which we could count and analyze potential retirees by job title. The results of this analysis are as follows:

* Pewlett-Hackard should expect, in the imminent future, an influx of retirements in two departments: Senior Engineer and Senior Staff. 

* Pewlett-Hackard does not have enough ``Engineers`` (9,285) nor ``Staff`` (7,636) to simply promote and replace their retiring ``Senior Engineers`` (25,916) and ``Senior Staff`` (24,926); let alone the dearth such a move would create in the now vacant ``Engineer`` and ``Staff`` positions. 

* Pewlett-Hackard should not expect many ``Managers`` to retire in the imediate future, with only two employees meeting such criteria. 

### Mentorship Elgibility 

Faced with a high rate of impending retirements, Pewlett-Hackard must ensure that its future employees can maintain the same level of productivity throughout its upcoming transition period. 

As such, Pewlett-Hackard's ``.CSV`` files for ``Employees``, ``Department of Employees`` and ``Titles`` were combined to create a single Table from which we could analyze potential mentorships. The results of this analysis are as follows:

* Pewlett-Hackard has only 1,549 potential mentees while it is potentially losing 25 times that in both its ``Senior Engineer`` and ``Senior Staff`` Departments. 

* Pewlett Hackard's greatest batch of potential mentees is in its ``Staff`` Department (436) with the ``Engineering`` Department having 291 potential mentees; both drastically below necessary replacemnt levels. 

## Summary

### Filling Roles

How Many Positions Will Need to Be Filled at Pewlett-Hackard?

* There are 72,458 Potential Retirees/ Positions to be Filled at Pewlett-Hackard. 

* The Positions in Most Dire Need are ``Senior Engineers`` (25,916) and ``Senior Staff`` (24,926).

### The Next Generation

Are there enough Retirees to Mentor the Next Generation?

* There are 1,549 Potential Mentees at Pewlett-Hackard while there are over 72,458 Potential Retirees.

* Thus there is more than enough Retirees to mentee the next generation; just not enough mentees to replace the previous generation. 

### Additional Querries & Tables

* Create new tables for each of the years (1952, 1953, 1954, 1955) in Pewlett-Hackard's current retirement range and ``count`` by department to show which departments will need to be adressed on a yearly basis. 

* Create a new table to ``count`` to number of potential mentees by department. 

* Create a new table of potential retirees, limiting the scope to those born in 1954 and 1955, to better ensure the next generation recieves a longer and more thorough mentorship. 
