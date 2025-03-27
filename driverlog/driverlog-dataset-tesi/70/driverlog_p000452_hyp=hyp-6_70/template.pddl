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
		p6-11 - location
		p6-7 - location
		p0-1 - location
		p5-0 - location
)
(:init
	(link s0 s1)
	(path s2 p0-1)
	(path p6-11 s2)
	(link s2 s1)
	(path p0-1 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(empty truck1)
	(path p6-11 s1)
	(empty truck2)
	(at driver1 s2)
	(link s0 s2)
	(path p6-7 s1)
	(at truck1 s0)
	(path p6-7 s0)
	(path s2 p6-11)
	(at truck2 s1)
	(path s1 p6-11)
	(path s0 p6-7)
	(at driver2 s2)
	(at package1 s1)
	(link s1 s2)
	(path s1 p6-7)
	(at package2 s2)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)