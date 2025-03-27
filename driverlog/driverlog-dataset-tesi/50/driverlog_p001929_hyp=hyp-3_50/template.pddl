(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
		driver3 - driver
		truck1 - truck
		truck2 - truck
		package1 - obj
		package2 - obj
		package3 - obj
		package4 - obj
		package5 - obj
		s0 - location
		s1 - location
		s2 - location
		p6-5 - location
		p1-0 - location
		p6-8 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(path s2 p6-5)
	(path p6-5 s1)
	(empty truck1)
	(at truck2 s2)
	(path p6-8 s2)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(at driver1 s0)
	(at truck1 s0)
	(path s2 p6-8)
	(path p6-8 s0)
	(at package4 s0)
	(path s1 p6-5)
	(at package1 s1)
	(path p6-5 s2)
	(at driver3 s0)
	(at package5 s2)
	(path s0 p6-8)
	(at package2 s2)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)