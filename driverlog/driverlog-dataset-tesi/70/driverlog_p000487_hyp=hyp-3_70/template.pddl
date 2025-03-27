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
		p0-1 - location
		p8-3 - location
		p3-9 - location
)
(:init
	(link s0 s1)
	(path s2 p0-1)
	(link s2 s1)
	(path s1 p8-3)
	(path p0-1 s0)
	(path s0 p0-1)
	(path p0-1 s2)
	(path p8-3 s1)
	(empty truck1)
	(path s0 p3-9)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(at driver1 s0)
	(at truck1 s0)
	(path p3-9 s1)
	(path p8-3 s2)
	(path s2 p8-3)
	(at truck2 s1)
	(path p3-9 s0)
	(link s1 s2)
	(path s1 p3-9)
	(at package2 s2)
	(at package1 s2)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)