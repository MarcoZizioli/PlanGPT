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
		p6-5 - location
		p2-6 - location
		p4-7 - location
)
(:init
	(link s0 s1)
	(link s2 s1)
	(path s2 p6-5)
	(path p2-6 s1)
	(path p6-5 s1)
	(at driver3 s2)
	(empty truck1)
	(at truck2 s2)
	(path p4-7 s2)
	(empty truck2)
	(path s0 p4-7)
	(at package3 s2)
	(link s0 s2)
	(at driver1 s0)
	(at package6 s0)
	(at package4 s2)
	(at truck1 s1)
	(path s0 p2-6)
	(at package5 s0)
	(path s1 p6-5)
	(at package2 s1)
	(path s1 p2-6)
	(at package1 s1)
	(path s2 p4-7)
	(path p6-5 s2)
	(empty truck3)
	(link s1 s2)
	(at truck3 s1)
	(path p2-6 s0)
	(at driver2 s1)
	(link s2 s0)
	(path p4-7 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)