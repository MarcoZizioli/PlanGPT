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
		p8-3 - location
		p9-7 - location
		p3-1 - location
)
(:init
	(at package3 s1)
	(path p3-1 s2)
	(link s0 s1)
	(at driver3 s1)
	(link s2 s1)
	(at package4 s1)
	(path s1 p8-3)
	(path p8-3 s1)
	(path s0 p8-3)
	(empty truck1)
	(path s2 p9-7)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(path p8-3 s0)
	(at driver1 s0)
	(path s1 p3-1)
	(path p9-7 s0)
	(at truck1 s1)
	(path p3-1 s1)
	(path s2 p3-1)
	(at package2 s1)
	(at truck2 s0)
	(at package1 s1)
	(link s1 s2)
	(path p9-7 s2)
	(at package5 s2)
	(path s0 p9-7)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)