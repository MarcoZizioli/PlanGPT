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
		p6-5 - location
		p3-1 - location
		p6-7 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at driver3 s1)
	(link s2 s1)
	(path s2 p6-5)
	(path s0 p3-1)
	(path p6-5 s0)
	(empty truck1)
	(empty truck2)
	(at package7 s2)
	(link s0 s2)
	(path s1 p3-1)
	(at driver1 s0)
	(path p6-7 s1)
	(path p3-1 s0)
	(at truck1 s2)
	(path s0 p6-5)
	(at package4 s0)
	(at package5 s0)
	(path p3-1 s1)
	(path s2 p6-7)
	(at truck2 s1)
	(at package2 s1)
	(at driver2 s2)
	(at package1 s1)
	(path p6-7 s2)
	(path p6-5 s2)
	(empty truck3)
	(link s1 s2)
	(path s1 p6-7)
	(at truck3 s1)
	(link s2 s0)
	(at package6 s2)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)