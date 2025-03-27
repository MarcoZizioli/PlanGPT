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
		p9-7 - location
		p6-2 - location
		p6-10 - location
)
(:init
	(at package3 s1)
	(link s0 s1)
	(at package2 s0)
	(link s2 s1)
	(at package4 s1)
	(at driver3 s2)
	(path p9-7 s1)
	(empty truck1)
	(path s1 p9-7)
	(at package6 s1)
	(empty truck2)
	(at driver1 s2)
	(at driver2 s0)
	(at package7 s2)
	(link s0 s2)
	(path s2 p6-2)
	(path p9-7 s0)
	(at truck1 s2)
	(path s0 p6-10)
	(path p6-10 s2)
	(path p6-2 s1)
	(path p6-2 s2)
	(path s1 p6-2)
	(at truck2 s0)
	(path p6-10 s0)
	(at package1 s1)
	(link s1 s2)
	(empty truck3)
	(at package5 s2)
	(at truck3 s2)
	(path s0 p9-7)
	(path s2 p6-10)
	(link s2 s0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)