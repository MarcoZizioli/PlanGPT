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
		p2-0 - location
		p4-6 - location
		p6-11 - location
)
(:init
	(link s0 s1)
	(path p2-0 s1)
	(at package1 s0)
	(link s2 s1)
	(empty truck1)
	(at truck2 s2)
	(path p6-11 s1)
	(path s2 p2-0)
	(empty truck2)
	(link s0 s2)
	(path s1 p2-0)
	(at driver1 s1)
	(at truck1 s1)
	(path s1 p6-11)
	(path p6-11 s0)
	(link s1 s2)
	(path s0 p6-11)
	(at package2 s2)
	(at driver2 s1)
	(link s2 s0)
	(path p2-0 s2)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)