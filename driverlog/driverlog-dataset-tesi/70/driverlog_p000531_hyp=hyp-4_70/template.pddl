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
		p1-0 - location
		p2-0 - location
		p11-0 - location
)
(:init
	(link s0 s1)
	(path p2-0 s1)
	(path p1-0 s2)
	(at package1 s0)
	(link s2 s1)
	(path s0 p2-0)
	(empty truck1)
	(path p2-0 s0)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(path p1-0 s1)
	(at driver1 s0)
	(path s2 p11-0)
	(path s1 p2-0)
	(at truck1 s1)
	(path s2 p1-0)
	(at package2 s1)
	(at truck2 s0)
	(path s0 p11-0)
	(link s1 s2)
	(path p11-0 s0)
	(link s2 s0)
	(path p11-0 s2)
	(path s1 p1-0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)