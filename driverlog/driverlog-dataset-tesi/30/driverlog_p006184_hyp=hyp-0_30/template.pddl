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
		p11-0 - location
		p2-3 - location
		p1-4 - location
)
(:init
	(link s0 s1)
	(path p2-3 s2)
	(path p1-4 s0)
	(at package2 s0)
	(link s2 s1)
	(at package4 s1)
	(path p2-3 s1)
	(at driver3 s2)
	(empty truck1)
	(at package6 s1)
	(empty truck2)
	(at driver2 s0)
	(at package3 s2)
	(link s0 s2)
	(at driver1 s0)
	(path s2 p11-0)
	(at truck3 s0)
	(path s1 p1-4)
	(at truck1 s0)
	(at package5 s0)
	(at truck2 s1)
	(path s0 p11-0)
	(path p1-4 s1)
	(path s2 p2-3)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(path s0 p1-4)
	(path s1 p2-3)
	(path p11-0 s0)
	(link s2 s0)
	(path p11-0 s2)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)