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
		p9-4 - location
		p0-1 - location
		p8-3 - location
		p7-9 - location
)
(:init
	(link s0 s1)
	(path s2 p0-1)
	(path p7-9 s0)
	(at driver3 s1)
	(link s2 s1)
	(at package4 s1)
	(path s1 p8-3)
	(path p0-1 s2)
	(path p8-3 s1)
	(path s0 p8-3)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package3 s2)
	(link s0 s2)
	(path p8-3 s0)
	(at driver1 s1)
	(path p7-9 s2)
	(at truck1 s2)
	(at package5 s0)
	(path p0-1 s1)
	(path s2 p7-9)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(path s1 p0-1)
	(at package2 s2)
	(at truck3 s1)
	(path s0 p7-9)
	(at driver2 s1)
	(at package7 s1)
	(link s2 s0)
	(at package6 s2)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)