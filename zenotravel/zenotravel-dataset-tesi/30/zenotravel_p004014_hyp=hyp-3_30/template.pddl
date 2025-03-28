(define (problem zenotravel-test)
(:domain zeno-travel)
(:objects
		plane1 - aircraft
		plane2 - aircraft
		person1 - person
		person2 - person
		person3 - person
		person4 - person
		person5 - person
		city0 - city
		city1 - city
		city2 - city
		city3 - city
		fl0 - flevel
		fl1 - flevel
		fl2 - flevel
		fl3 - flevel
		fl4 - flevel
		fl5 - flevel
		fl6 - flevel
)
(:init
	(at plane1 city3)
	(at plane2 city1)
	(at person1 city3)
	(at person2 city2)
	(at person3 city0)
	(at person4 city0)
	(at person5 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
	(fuel-level plane1 fl2)
	(fuel-level plane2 fl2)
)
(:goal 
(and
<HYPOTHESIS>
))
)