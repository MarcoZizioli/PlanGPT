(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
		driver3 - driver
		truck1 - truck
		truck2 - truck
		truck3 - truck
		package1 - obj
		package2 - obj
		package3 - obj
		package4 - obj
		package5 - obj
		package6 - obj
		package7 - obj
		s0 - location
		s1 - location
		s2 - location
		p1-2 - location
		p6-7 - location
		p0-2 - location
		p6-10 - location
)
(:init
	(link s0 s1)
	(link s2 s1)
	(at driver3 s2)
	(at package7 s0)
	(empty truck1)
	(path s0 p1-2)
	(at package6 s1)
	(empty truck2)
	(link s0 s2)
	(path p1-2 s0)
	(at driver1 s1)
	(path p6-7 s1)
	(at package4 s2)
	(at truck1 s1)
	(path s1 p1-2)
	(at package5 s0)
	(path s2 p6-7)
	(path p1-2 s1)
	(at truck2 s1)
	(at package2 s1)
	(at driver2 s2)
	(at package1 s1)
	(path p6-7 s2)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(path s1 p6-7)
	(at truck3 s1)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)