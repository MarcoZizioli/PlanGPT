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
		p3-1 - location
		p2-5 - location
)
(:init
	(link s0 s1)
	(path p3-1 s2)
	(at package1 s0)
	(at package2 s0)
	(path p4-6 s2)
	(link s2 s1)
	(path s0 p3-1)
	(empty truck1)
	(at truck2 s2)
	(path s1 p2-5)
	(path s2 p4-6)
	(empty truck2)
	(path p2-5 s0)
	(at driver1 s1)
	(path p3-1 s0)
	(at truck1 s1)
	(path p2-5 s1)
	(path p4-6 s1)
	(path s2 p3-1)
	(path s1 p4-6)
	(link s1 s2)
	(at driver2 s1)
	(path s0 p2-5)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)