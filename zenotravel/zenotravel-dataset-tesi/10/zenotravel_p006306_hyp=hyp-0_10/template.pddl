(define (problem zenotravel-test)
(:domain zeno-travel)
(:objects
		plane1 - aircraft
		plane2 - aircraft
		plane3 - aircraft
		person1 - person
		person2 - person
		person3 - person
		person4 - person
		person5 - person
		person6 - person
		city0 - city
		city1 - city
		city2 - city
		city3 - city
		city4 - city
		fl0 - flevel
		fl1 - flevel
		fl2 - flevel
		fl3 - flevel
		fl4 - flevel
		fl5 - flevel
		fl6 - flevel
)
(:init
	(at plane1 city4)
	(at plane2 city0)
	(at plane3 city2)
	(at person1 city1)
	(at person2 city2)
	(at person3 city2)
	(at person4 city4)
	(at person5 city1)
	(at person6 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
	(fuel-level plane1 fl3)
	(fuel-level plane2 fl0)
	(fuel-level plane3 fl0)
)
(:goal 
(and
<HYPOTHESIS>
))
)