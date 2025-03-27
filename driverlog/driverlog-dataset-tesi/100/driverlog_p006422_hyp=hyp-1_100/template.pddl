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
		s0 - location
		s1 - location
		s2 - location
		p2-5 - location
		p8-11 - location
		p2-0 - location
		p7-9 - location
)
(:init
	(path p2-0 s1)
	(at package1 s0)
	(at driver3 s1)
	(at package2 s0)
	(link s2 s1)
	(path p2-5 s2)
	(path p8-11 s0)
	(path p8-11 s1)
	(empty truck1)
	(path s0 p8-11)
	(path s2 p2-0)
	(empty truck2)
	(at package3 s2)
	(link s0 s2)
	(at driver1 s0)
	(path s1 p2-0)
	(path p2-5 s0)
	(at truck1 s0)
	(at package6 s0)
	(path s2 p2-5)
	(at package4 s0)
	(at package5 s1)
	(path s1 p8-11)
	(at truck2 s1)
	(at driver2 s2)
	(link s1 s2)
	(empty truck3)
	(at truck3 s1)
	(link s2 s0)
	(path s0 p2-5)
	(path p2-0 s2)
)
(:goal 
(and
<HYPOTHESIS>
))
)