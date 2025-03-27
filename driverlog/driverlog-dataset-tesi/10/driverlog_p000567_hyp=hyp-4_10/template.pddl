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
		p2-7 - location
		p0-8 - location
		p4-6 - location
)
(:init
	(link s0 s1)
	(at package2 s0)
	(path p4-6 s2)
	(link s2 s1)
	(path s1 p0-8)
	(path p2-7 s0)
	(empty truck1)
	(path s0 p0-8)
	(path s2 p2-7)
	(path s2 p4-6)
	(path s0 p2-7)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(at driver1 s0)
	(path p0-8 s1)
	(at truck1 s0)
	(path p4-6 s1)
	(path s1 p4-6)
	(at truck2 s0)
	(at package1 s1)
	(path p2-7 s2)
	(link s1 s2)
	(path p0-8 s0)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)