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
		p4-6 - location
		p0-1 - location
		p6-7 - location
		p2-3 - location
)
(:init
	(link s0 s1)
	(path s2 p0-1)
	(path p2-3 s2)
	(path p4-6 s0)
	(link s2 s1)
	(path p0-1 s2)
	(path p2-3 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(at truck1 s0)
	(path s0 p4-6)
	(path p4-6 s1)
	(path s1 p4-6)
	(path s2 p2-3)
	(at driver2 s2)
	(link s1 s2)
	(at package2 s2)
	(at package1 s2)
	(path s1 p2-3)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)