(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
		truck1 - truck
		truck2 - truck
		package1 - obj
		package2 - obj
		s0 - location
		s1 - location
		s2 - location
		p3-2 - location
		p0-8 - location
		p2-1 - location
)
(:init
	(link s0 s1)
	(link s2 s1)
	(path s1 p0-8)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at driver1 s2)
	(link s0 s2)
	(path p0-8 s1)
	(path s2 p2-1)
	(at truck1 s2)
	(path s1 p3-2)
	(path s0 p3-2)
	(path p2-1 s0)
	(path p0-8 s2)
	(path p2-1 s2)
	(path p3-2 s0)
	(path s0 p2-1)
	(at package2 s1)
	(path p3-2 s1)
	(at driver2 s2)
	(at package1 s1)
	(link s1 s2)
	(link s2 s0)
	(path s2 p0-8)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)