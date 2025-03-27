(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
		driver3 - driver
		truck1 - truck
		truck2 - truck
		truck3 - truck
		package1 - obj
		package2 - obj
		package3 - obj
		package4 - obj
		package5 - obj
		package6 - obj
		s0 - location
		s1 - location
		s2 - location
		p6-11 - location
		p6-4 - location
)
(:init
	(link s0 s1)
	(path p6-11 s2)
	(at driver3 s1)
	(link s2 s1)
	(empty truck1)
	(at truck2 s2)
	(path p6-11 s1)
	(empty truck2)
	(link s0 s2)
	(path p6-4 s0)
	(at truck3 s0)
	(at driver1 s1)
	(at truck1 s2)
	(at package4 s2)
	(path s1 p6-4)
	(path p6-4 s1)
	(at package5 s1)
	(path s2 p6-11)
	(at package2 s1)
	(path s1 p6-11)
	(at driver2 s2)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(path s0 p6-4)
	(link s2 s0)
	(at package6 s2)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)