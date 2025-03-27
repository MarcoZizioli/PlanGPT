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
		p6-4 - location
		p3-9 - location
)
(:init
	(link s0 s1)
	(path p2-0 s1)
	(link s2 s1)
	(path s0 p2-0)
	(path p3-9 s2)
	(empty truck1)
	(path s0 p3-9)
	(path s2 p6-4)
	(path p2-0 s0)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(path s1 p2-0)
	(at truck1 s0)
	(path s2 p3-9)
	(path s1 p6-4)
	(path p6-4 s1)
	(path p6-4 s2)
	(path p3-9 s0)
	(at package2 s1)
	(at truck2 s0)
	(at driver2 s2)
	(link s1 s2)
	(at package1 s2)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)