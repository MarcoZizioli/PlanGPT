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
		p6-2 - location
		p9-7 - location
		p3-1 - location
		p8-11 - location
		p6-5 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(link s2 s1)
	(path s2 p6-5)
	(path p6-5 s0)
	(path p9-7 s1)
	(empty truck1)
	(path s1 p9-7)
	(path s2 p9-7)
	(path p6-2 s0)
	(empty truck2)
	(link s0 s2)
	(at driver1 s1)
	(path p6-2 s1)
	(at truck1 s1)
	(path s0 p6-5)
	(at package4 s0)
	(path s1 p6-2)
	(at truck2 s1)
	(path p6-5 s2)
	(link s1 s2)
	(at driver3 s0)
	(path p9-7 s2)
	(at package5 s2)
	(at package1 s2)
	(at package2 s2)
	(path s0 p6-2)
	(at driver2 s1)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)