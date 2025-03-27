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
		p8-3 - location
		p3-1 - location
		p2-0 - location
		p5-0 - location
		p2-5 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at package2 s0)
	(link s2 s1)
	(at package4 s1)
	(path s1 p8-3)
	(path p8-3 s1)
	(path p2-5 s2)
	(at package7 s0)
	(empty truck1)
	(at truck2 s2)
	(at package6 s1)
	(empty truck2)
	(at driver1 s2)
	(path s0 p5-0)
	(link s0 s2)
	(path p2-5 s0)
	(at truck1 s0)
	(path s2 p2-5)
	(at package5 s1)
	(path p5-0 s0)
	(path p8-3 s2)
	(path s2 p8-3)
	(at driver2 s2)
	(link s1 s2)
	(empty truck3)
	(at driver3 s0)
	(at package1 s2)
	(at truck3 s1)
	(path p5-0 s1)
	(path s1 p5-0)
	(link s2 s0)
	(path s0 p2-5)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)