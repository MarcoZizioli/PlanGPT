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
		p10-0 - location
		p7-9 - location
		p4-0 - location
)
(:init
	(link s0 s1)
	(at package1 s0)
	(path s2 p10-0)
	(path p7-9 s0)
	(link s2 s1)
	(empty truck1)
	(at truck2 s2)
	(path p10-0 s1)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(path p10-0 s2)
	(path p7-9 s2)
	(at truck1 s0)
	(path s2 p7-9)
	(at package2 s1)
	(at driver2 s2)
	(path s1 p10-0)
	(link s1 s2)
	(path s0 p7-9)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)