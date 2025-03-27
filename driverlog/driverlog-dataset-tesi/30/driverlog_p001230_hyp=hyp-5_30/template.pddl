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
		p8-5 - location
		p11-1 - location
		p2-6 - location
		p8-11 - location
		p7-1 - location
)
(:init
	(link s0 s1)
	(at driver3 s1)
	(path s0 p7-1)
	(link s2 s1)
	(path s2 p8-5)
	(path p7-1 s0)
	(path p8-11 s0)
	(path p8-11 s1)
	(empty truck1)
	(at truck2 s2)
	(path s0 p8-11)
	(empty truck2)
	(link s0 s2)
	(at driver1 s0)
	(path s2 p7-1)
	(at package4 s2)
	(at truck1 s1)
	(at package5 s1)
	(path p7-1 s2)
	(path s1 p8-11)
	(path p8-5 s2)
	(link s1 s2)
	(at package3 s0)
	(at package1 s2)
	(at package2 s2)
	(path s1 p8-5)
	(at driver2 s1)
	(path p8-5 s1)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)