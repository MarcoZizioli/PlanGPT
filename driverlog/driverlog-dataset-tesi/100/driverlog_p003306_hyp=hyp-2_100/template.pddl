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
		p3-1 - location
		p8-11 - location
)
(:init
	(link s0 s1)
	(path s2 p8-11)
	(path p3-1 s2)
	(link s2 s1)
	(path s0 p3-1)
	(at driver3 s2)
	(at package7 s0)
	(path p8-11 s1)
	(empty truck1)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(at driver1 s1)
	(at truck1 s0)
	(path p3-1 s0)
	(at package6 s0)
	(at package4 s0)
	(at package5 s1)
	(path s1 p8-11)
	(path s2 p3-1)
	(at truck2 s1)
	(at package2 s1)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(path p8-11 s2)
	(at truck3 s2)
	(at package1 s2)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)