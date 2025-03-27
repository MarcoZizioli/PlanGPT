(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
		driver3 - driver
		truck1 - truck
		truck2 - truck
		package1 - obj
		package2 - obj
		package3 - obj
		package4 - obj
		package5 - obj
		s0 - location
		s1 - location
		s2 - location
		p3-2 - location
		p8-5 - location
		p2-6 - location
)
(:init
	(link s0 s1)
	(at package1 s0)
	(at driver3 s1)
	(at package2 s0)
	(link s2 s1)
	(path s2 p8-5)
	(path p2-6 s1)
	(empty truck1)
	(path p3-2 s2)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(at driver1 s0)
	(at truck1 s2)
	(path s0 p2-6)
	(path s1 p3-2)
	(at package4 s0)
	(at package5 s0)
	(path s0 p8-5)
	(at truck2 s0)
	(path p8-5 s2)
	(path s2 p3-2)
	(path p3-2 s1)
	(path s1 p2-6)
	(link s1 s2)
	(path p8-5 s0)
	(at package3 s0)
	(path p2-6 s0)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)