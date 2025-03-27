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
		p11-10 - location
		p2-1 - location
		p3-2 - location
)
(:init
	(link s0 s1)
	(at package1 s0)
	(at package2 s0)
	(link s2 s1)
	(path p11-10 s0)
	(at driver3 s2)
	(empty truck1)
	(at truck2 s2)
	(path p2-1 s1)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(path s2 p2-1)
	(at truck3 s0)
	(at truck1 s0)
	(at package6 s0)
	(at package4 s0)
	(at package5 s1)
	(path p11-10 s1)
	(path p2-1 s2)
	(path s1 p11-10)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(link s2 s0)
	(at driver2 s1)
	(at package7 s1)
	(path s1 p2-1)
	(path s0 p11-10)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)