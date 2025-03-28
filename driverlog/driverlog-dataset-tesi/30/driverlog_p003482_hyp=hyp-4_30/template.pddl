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
		p0-8 - location
		p1-4 - location
		p11-4 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at driver3 s1)
	(path p1-4 s0)
	(link s2 s1)
	(at package4 s1)
	(path s1 p0-8)
	(path p11-4 s2)
	(empty truck1)
	(path s0 p0-8)
	(at package6 s1)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(at driver1 s0)
	(path p0-8 s1)
	(at truck3 s0)
	(at truck1 s1)
	(path p1-4 s2)
	(path s1 p11-4)
	(path p11-4 s1)
	(at truck2 s1)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(path s0 p1-4)
	(at package5 s2)
	(at package2 s2)
	(path p0-8 s0)
	(path s2 p11-4)
	(at package7 s1)
	(link s2 s0)
	(path s2 p1-4)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)