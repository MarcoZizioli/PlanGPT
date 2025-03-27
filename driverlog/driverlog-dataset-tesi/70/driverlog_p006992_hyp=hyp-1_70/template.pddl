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
		p9-7 - location
		p11-4 - location
		p7-9 - location
)
(:init
	(link s0 s1)
	(path s1 p0-2)
	(path p7-9 s0)
	(at driver3 s1)
	(link s2 s1)
	(path p0-2 s0)
	(path p9-7 s1)
	(empty truck1)
	(path s1 p9-7)
	(path s0 p0-2)
	(path s2 p9-7)
	(empty truck2)
	(link s0 s2)
	(at driver1 s1)
	(path p7-9 s2)
	(at truck1 s0)
	(at package6 s0)
	(path p0-2 s1)
	(at package4 s0)
	(at package5 s0)
	(path s2 p7-9)
	(at truck2 s1)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(path p9-7 s2)
	(at package2 s2)
	(at truck3 s1)
	(path s0 p7-9)
	(at driver2 s1)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)