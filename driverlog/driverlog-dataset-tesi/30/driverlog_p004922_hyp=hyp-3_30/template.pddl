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
		package7 - obj
		s0 - location
		s1 - location
		s2 - location
		p4-0 - location
		p8-4 - location
		p2-3 - location
)
(:init
	(at package3 s1)
	(path p8-4 s1)
	(link s0 s1)
	(path p2-3 s2)
	(path p4-0 s0)
	(at package2 s0)
	(link s2 s1)
	(at package4 s1)
	(path p2-3 s1)
	(path p8-4 s0)
	(at driver3 s2)
	(empty truck1)
	(empty truck2)
	(at driver1 s2)
	(link s0 s2)
	(path s2 p4-0)
	(at truck1 s1)
	(path s1 p8-4)
	(at truck2 s1)
	(path p4-0 s2)
	(path s2 p2-3)
	(path s0 p8-4)
	(at driver2 s2)
	(link s1 s2)
	(empty truck3)
	(at package5 s2)
	(at truck3 s2)
	(at package1 s2)
	(path s1 p2-3)
	(at package7 s1)
	(link s2 s0)
	(at package6 s2)
	(link s1 s0)
	(path s0 p4-0)
)
(:goal 
(and
<HYPOTHESIS>
))
)