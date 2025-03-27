(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
		driver3 - driver
		truck1 - truck
		truck2 - truck
		package1 - obj
		package2 - obj
		package3 - obj
		package4 - obj
		package5 - obj
		s0 - location
		s1 - location
		s2 - location
		p11-1 - location
		p1-4 - location
		p2-1 - location
		p0-8 - location
)
(:init
	(link s0 s1)
	(empty truck1)
	(at truck2 s2)
	(path s0 p0-8)
	(path p2-1 s1)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(path s1 p1-4)
	(at truck1 s2)
	(at package4 s2)
	(path p1-4 s2)
	(path p2-1 s0)
	(path p0-8 s2)
	(path s0 p2-1)
	(at package2 s1)
	(path p1-4 s1)
	(at driver2 s2)
	(at package1 s1)
	(at package3 s0)
	(at driver3 s0)
	(at package5 s2)
	(path p0-8 s0)
	(link s2 s0)
	(path s1 p2-1)
	(path s2 p1-4)
	(path s2 p0-8)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)