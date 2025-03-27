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
		p6-5 - location
		p11-0 - location
		p1-0 - location
)
(:init
	(link s0 s1)
	(at driver3 s1)
	(at package2 s0)
	(path s2 p6-5)
	(path p6-5 s1)
	(path p1-0 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at driver2 s0)
	(link s0 s2)
	(path p1-0 s1)
	(path s2 p11-0)
	(at driver1 s1)
	(at truck1 s0)
	(at package4 s0)
	(at package5 s0)
	(path s0 p1-0)
	(path s1 p6-5)
	(path s0 p11-0)
	(at package1 s1)
	(path p6-5 s2)
	(at package3 s0)
	(path p11-0 s0)
	(link s2 s0)
	(path p11-0 s2)
	(path s1 p1-0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)