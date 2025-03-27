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
		p1-2 - location
		p3-9 - location
		p8-3 - location
		p11-10 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at driver3 s1)
	(at package2 s0)
	(link s2 s1)
	(path p11-10 s0)
	(path p3-9 s2)
	(at package7 s0)
	(empty truck1)
	(path s0 p1-2)
	(at package6 s1)
	(empty truck2)
	(at driver1 s2)
	(link s0 s2)
	(path p1-2 s0)
	(at truck1 s0)
	(path s2 p3-9)
	(path s1 p1-2)
	(at package4 s0)
	(at package5 s0)
	(path p3-9 s1)
	(path p1-2 s1)
	(path s2 p11-10)
	(at truck2 s1)
	(path p11-10 s2)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(path s1 p3-9)
	(at truck3 s1)
	(at driver2 s1)
	(link s2 s0)
	(path s0 p11-10)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)