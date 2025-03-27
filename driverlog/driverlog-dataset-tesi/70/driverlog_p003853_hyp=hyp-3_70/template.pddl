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
		p6-2 - location
		p3-7 - location
		p9-4 - location
		p6-5 - location
)
(:init
	(link s0 s1)
	(at package1 s0)
	(path s0 p9-4)
	(at driver3 s1)
	(link s2 s1)
	(path p6-5 s1)
	(path p6-5 s0)
	(empty truck1)
	(at truck2 s2)
	(at package6 s1)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(path s2 p6-2)
	(at driver1 s1)
	(path p9-4 s2)
	(at package4 s2)
	(at truck1 s1)
	(path s0 p6-5)
	(path p6-2 s1)
	(path p6-2 s2)
	(at package5 s0)
	(path s1 p6-5)
	(path s1 p6-2)
	(path s2 p9-4)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(at package2 s2)
	(at truck3 s1)
	(at package7 s1)
	(link s2 s0)
	(link s1 s0)
	(path p9-4 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)