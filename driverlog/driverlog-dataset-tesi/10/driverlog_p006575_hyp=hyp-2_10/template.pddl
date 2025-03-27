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
		p9-4 - location
		p6-8 - location
		p8-3 - location
		p4-7 - location
		p0-2 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at package2 s0)
	(link s2 s1)
	(at package4 s1)
	(path s1 p8-3)
	(path p8-3 s1)
	(path s0 p8-3)
	(empty truck1)
	(at truck2 s2)
	(path p6-8 s2)
	(path p4-7 s2)
	(empty truck2)
	(link s0 s2)
	(path p8-3 s0)
	(at driver1 s0)
	(at truck3 s0)
	(path s2 p6-8)
	(at package6 s0)
	(at truck1 s1)
	(path p6-8 s0)
	(path s1 p4-7)
	(path s2 p4-7)
	(link s1 s2)
	(empty truck3)
	(at driver3 s0)
	(at package5 s2)
	(path s0 p6-8)
	(at package1 s2)
	(path p4-7 s1)
	(at driver2 s1)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)