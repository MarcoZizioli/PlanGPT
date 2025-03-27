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
		p2-1 - location
		p9-4 - location
		p6-2 - location
)
(:init
	(link s0 s1)
	(link s2 s1)
	(empty truck1)
	(path s1 p9-4)
	(path p9-4 s1)
	(path p6-2 s0)
	(path p2-1 s1)
	(empty truck2)
	(at driver1 s2)
	(at driver2 s0)
	(link s0 s2)
	(path s2 p6-2)
	(path p9-4 s2)
	(at truck1 s0)
	(path p6-2 s2)
	(path p2-1 s0)
	(path s2 p9-4)
	(at truck2 s1)
	(path s0 p2-1)
	(at package2 s1)
	(link s1 s2)
	(at package1 s2)
	(path s0 p6-2)
	(link s2 s0)
	(path s1 p2-1)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)