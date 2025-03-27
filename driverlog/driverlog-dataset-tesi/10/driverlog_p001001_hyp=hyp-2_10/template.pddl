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
		p6-4 - location
		p7-10 - location
		p8-11 - location
		p1-0 - location
)
(:init
	(link s0 s1)
	(path p7-10 s2)
	(link s2 s1)
	(path s0 p7-10)
	(path p1-0 s0)
	(empty truck1)
	(at truck2 s2)
	(path s2 p6-4)
	(empty truck2)
	(at driver1 s2)
	(at driver2 s0)
	(link s0 s2)
	(path p1-0 s1)
	(at package4 s2)
	(at truck1 s1)
	(path p7-10 s0)
	(path s1 p6-4)
	(path p6-4 s1)
	(path s0 p1-0)
	(path p6-4 s2)
	(path s2 p7-10)
	(link s1 s2)
	(at package3 s0)
	(at driver3 s0)
	(at package5 s2)
	(at package2 s2)
	(at package1 s2)
	(link s2 s0)
	(path s1 p1-0)
	(link s1 s0)
)
(:goal 
(and
<HYPOTHESIS>
))
)