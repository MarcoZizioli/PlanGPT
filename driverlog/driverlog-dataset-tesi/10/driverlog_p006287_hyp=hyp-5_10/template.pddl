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
		p6-8 - location
		p11-10 - location
		p11-4 - location
)
(:init
	(link s0 s1)
	(at driver3 s1)
	(link s2 s1)
	(at package4 s1)
	(path p11-10 s0)
	(empty truck1)
	(empty truck2)
	(link s0 s2)
	(at driver1 s1)
	(at package6 s0)
	(at truck1 s2)
	(path s1 p6-8)
	(path p6-8 s0)
	(path s2 p11-10)
	(path p11-10 s2)
	(at truck2 s0)
	(link s1 s2)
	(empty truck3)
	(at package3 s0)
	(at package5 s2)
	(path s0 p6-8)
	(at package2 s2)
	(at package1 s2)
	(path p6-8 s1)
	(at truck3 s1)
	(at driver2 s1)
	(link s2 s0)
	(path s0 p11-10)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)