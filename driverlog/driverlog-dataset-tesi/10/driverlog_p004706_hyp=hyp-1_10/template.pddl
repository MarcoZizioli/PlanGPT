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
		p10-0 - location
		p3-7 - location
		p7-10 - location
)
(:init
	(link s0 s1)
	(path s2 p10-0)
	(path p7-10 s2)
	(link s2 s1)
	(path s0 p7-10)
	(empty truck1)
	(path p3-7 s1)
	(link s1 s0)
	(path p10-0 s1)
	(empty truck2)
	(at driver1 s2)
	(at driver2 s0)
	(at package3 s2)
	(link s0 s2)
	(path p10-0 s2)
	(at truck1 s2)
	(at package4 s2)
	(path p7-10 s0)
	(at package5 s0)
	(path s1 p3-7)
	(at package6 s2)
	(at truck2 s0)
	(path s2 p7-10)
	(at package1 s1)
	(path s1 p10-0)
	(link s1 s2)
	(empty truck3)
	(at driver3 s0)
	(at package2 s2)
	(at truck3 s1)
	(at package7 s1)
	(link s2 s0)
	(path p3-7 s0)
	(path s0 p3-7)
)
(:goal 
(and
<HYPOTHESIS>
))
)