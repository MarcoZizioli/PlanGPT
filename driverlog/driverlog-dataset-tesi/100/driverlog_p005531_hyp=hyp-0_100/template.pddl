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
		s3 - location
		s4 - location
		s5 - location
		s6 - location
		s7 - location
		s8 - location
		s9 - location
		p3-9 - location
		p4-0 - location
		p9-4 - location
		p5-0 - location
		p6-11 - location
		p8-11 - location
		p8-4 - location
		p11-0 - location
		p6-7 - location
		p2-5 - location
		p3-1 - location
		p3-7 - location
		p4-7 - location
		p4-6 - location
		p7-10 - location
		p6-2 - location
)
(:init
	(link s2 s5)
	(path s6 p7-10)
	(path p3-9 s3)
	(link s3 s2)
	(link s7 s3)
	(path p4-0 s3)
	(path p6-11 s2)
	(link s7 s9)
	(at package3 s7)
	(path s3 p3-9)
	(path p5-0 s4)
	(link s6 s3)
	(link s6 s2)
	(path p3-7 s3)
	(path p4-0 s1)
	(link s5 s3)
	(path s0 p8-11)
	(path s2 p4-6)
	(path s0 p4-7)
	(path s8 p6-7)
	(link s5 s2)
	(path s9 p2-5)
	(link s6 s9)
	(link s4 s0)
	(path s2 p6-11)
	(path s2 p9-4)
	(link s6 s4)
	(path p4-7 s5)
	(path p8-11 s6)
	(link s0 s7)
	(path s6 p3-9)
	(link s4 s6)
	(path s8 p6-2)
	(path p2-5 s9)
	(path p4-7 s0)
	(link s7 s4)
	(link s9 s7)
	(link s8 s1)
	(link s3 s4)
	(path s3 p9-4)
	(link s3 s5)
	(link s1 s7)
	(path p2-5 s7)
	(link s4 s7)
	(link s5 s7)
	(path p8-4 s6)
	(path p5-0 s8)
	(link s0 s2)
	(path p3-1 s3)
	(path s6 p11-0)
	(at truck3 s8)
	(path s5 p4-7)
	(path p3-7 s9)
	(at package4 s3)
	(link s9 s6)
	(path p11-0 s6)
	(link s3 s0)
	(path p3-9 s6)
	(link s3 s6)
	(path p4-6 s1)
	(path s7 p6-7)
	(link s6 s0)
	(path s3 p3-1)
	(link s2 s6)
	(link s4 s9)
	(path p6-11 s5)
	(link s5 s9)
	(link s1 s2)
	(link s2 s8)
	(path p11-0 s7)
	(path p7-10 s6)
	(link s2 s3)
	(path p7-10 s4)
	(link s6 s1)
	(at driver3 s1)
	(path s7 p11-0)
	(at package5 s6)
	(link s7 s8)
	(at truck2 s7)
	(path p8-11 s0)
	(link s0 s9)
	(path s9 p3-7)
	(path p6-7 s7)
	(link s7 s0)
	(link s0 s6)
	(link s9 s0)
	(path s8 p3-1)
	(link s7 s2)
	(at package6 s0)
	(at driver1 s5)
	(path s8 p5-0)
	(path s7 p2-5)
	(link s8 s5)
	(path p3-1 s8)
	(path p6-2 s8)
	(path s3 p3-7)
	(path s4 p5-0)
	(link s4 s3)
	(path s5 p6-11)
	(empty truck3)
	(link s8 s7)
	(link s1 s0)
	(link s0 s1)
	(link s0 s3)
	(path p6-2 s9)
	(link s9 s5)
	(path p4-6 s2)
	(link s2 s1)
	(path s1 p4-0)
	(path s4 p7-10)
	(empty truck1)
	(at package1 s7)
	(path s9 p6-2)
	(at truck1 s9)
	(path p9-4 s3)
	(path p8-4 s2)
	(link s3 s7)
	(empty truck2)
	(at package2 s5)
	(path p9-4 s2)
	(link s8 s2)
	(link s7 s5)
	(path p6-7 s8)
	(link s7 s1)
	(path s6 p8-11)
	(path s6 p8-4)
	(link s2 s7)
	(path s1 p4-6)
	(link s5 s8)
	(path s2 p8-4)
	(at driver2 s6)
	(link s9 s4)
	(link s0 s4)
	(path s3 p4-0)
	(link s2 s0)
	(link s1 s6)
	(link s1 s8)
)
(:goal 
(and
<HYPOTHESIS>
))
)