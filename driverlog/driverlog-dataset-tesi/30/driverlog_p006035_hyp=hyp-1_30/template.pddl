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
		p0-2 - location
		p2-7 - location
		p6-11 - location
		p6-5 - location
)
(:init
	(link s0 s1)
	(at package1 s0)
	(at package2 s0)
	(link s2 s1)
	(path p0-2 s0)
	(at driver3 s2)
	(empty truck1)
	(path p6-11 s1)
	(path s2 p2-7)
	(path s0 p0-2)
	(empty truck2)
	(at package3 s2)
	(link s0 s2)
	(at driver1 s0)
	(at truck1 s2)
	(at package4 s2)
	(path s2 p0-2)
	(at package5 s1)
	(path s1 p2-7)
	(at truck2 s0)
	(path s1 p6-11)
	(at driver2 s2)
	(path p2-7 s2)
	(path p6-11 s0)
	(link s1 s2)
	(empty truck3)
	(path s0 p6-11)
	(at truck3 s2)
	(path p0-2 s2)
	(link s2 s0)
	(path p2-7 s1)
	(at package6 s2)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)