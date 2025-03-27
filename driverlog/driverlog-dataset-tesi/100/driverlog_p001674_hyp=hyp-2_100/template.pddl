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
		p2-1 - location
		p2-7 - location
		p4-7 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at driver3 s1)
	(at package2 s0)
	(link s2 s1)
	(path p2-7 s0)
	(empty truck1)
	(path p4-7 s2)
	(path s2 p2-7)
	(path s0 p2-7)
	(path p2-1 s1)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(at truck1 s1)
	(at package4 s0)
	(at package5 s1)
	(path p2-1 s0)
	(at truck2 s1)
	(path s0 p2-1)
	(at driver2 s2)
	(at package1 s1)
	(path s1 p4-7)
	(path s2 p4-7)
	(path p2-7 s2)
	(link s1 s2)
	(path p4-7 s1)
	(link s2 s0)
	(path s1 p2-1)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)