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
		p6-10 - location
		p10-0 - location
		p1-2 - location
)
(:init
	(link s0 s1)
	(at package1 s0)
	(path s2 p10-0)
	(at package2 s0)
	(link s2 s1)
	(empty truck1)
	(at truck2 s2)
	(path s0 p1-2)
	(path p10-0 s1)
	(empty truck2)
	(at driver1 s2)
	(link s0 s2)
	(path p1-2 s0)
	(path p10-0 s2)
	(at truck1 s2)
	(path p6-10 s2)
	(path s0 p6-10)
	(path s1 p1-2)
	(path p1-2 s1)
	(path p6-10 s0)
	(at driver2 s2)
	(path s1 p10-0)
	(link s1 s2)
	(path s2 p6-10)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)