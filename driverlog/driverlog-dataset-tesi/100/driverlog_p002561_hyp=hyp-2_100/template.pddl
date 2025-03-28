(define (problem driverlog-test)
(:domain driverlog)
(:objects
		driver1 - driver
		driver2 - driver
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
		s10 - location
		s11 - location
		p6-2 - location
		p0-1 - location
		p4-0 - location
		p2-3 - location
		p10-0 - location
		p4-6 - location
		p1-0 - location
		p3-9 - location
		p3-2 - location
		p5-0 - location
		p11-10 - location
		p3-1 - location
		p2-0 - location
		p6-10 - location
		p6-5 - location
		p6-4 - location
		p9-7 - location
		p2-6 - location
		p7-1 - location
		p4-7 - location
		p3-7 - location
		p6-8 - location
)
(:init
	(path p3-7 s10)
	(path p3-9 s3)
	(path p2-3 s2)
	(path s2 p0-1)
	(at package1 s0)
	(path s5 p6-4)
	(link s5 s10)
	(link s3 s2)
	(path s3 p3-9)
	(link s2 s10)
	(link s7 s10)
	(path s1 p9-7)
	(link s6 s2)
	(link s3 s1)
	(path p10-0 s8)
	(path s11 p6-8)
	(at driver1 s2)
	(path s3 p0-1)
	(path p0-1 s3)
	(path p4-7 s10)
	(link s9 s8)
	(path p6-10 s7)
	(link s10 s2)
	(path s3 p3-2)
	(link s8 s9)
	(path s11 p3-7)
	(link s11 s6)
	(path s2 p2-3)
	(path s1 p10-0)
	(path p6-8 s3)
	(path p1-0 s7)
	(at package6 s2)
	(link s3 s11)
	(path p9-7 s4)
	(path s0 p4-0)
	(link s4 s11)
	(path s1 p7-1)
	(link s8 s1)
	(link s3 s10)
	(path p6-4 s5)
	(at truck1 s10)
	(link s5 s0)
	(link s9 s1)
	(link s9 s3)
	(path p6-5 s7)
	(at package5 s10)
	(path p9-7 s1)
	(path s10 p3-7)
	(link s5 s7)
	(link s4 s5)
	(path p5-0 s8)
	(link s10 s0)
	(link s1 s9)
	(path s6 p2-3)
	(path p4-6 s9)
	(link s3 s0)
	(link s0 s5)
	(path s5 p11-10)
	(path s9 p4-6)
	(path s0 p4-6)
	(link s10 s4)
	(link s10 s5)
	(link s2 s6)
	(link s11 s7)
	(path s2 p3-1)
	(link s6 s0)
	(path p2-0 s11)
	(at truck2 s3)
	(path p6-10 s10)
	(path p3-2 s3)
	(link s5 s9)
	(path p3-2 s8)
	(link s11 s3)
	(link s1 s4)
	(path p7-1 s1)
	(link s10 s1)
	(link s2 s3)
	(path p7-1 s9)
	(at package3 s8)
	(path s10 p6-10)
	(path p4-6 s0)
	(at package2 s11)
	(path s3 p6-8)
	(path p2-6 s8)
	(link s10 s7)
	(path p2-6 s5)
	(path p0-1 s2)
	(path p2-0 s9)
	(path p4-7 s2)
	(path s11 p2-0)
	(path s8 p10-0)
	(path s9 p7-1)
	(path p10-0 s1)
	(link s0 s6)
	(path s8 p3-1)
	(path p6-8 s11)
	(link s7 s2)
	(path s4 p4-0)
	(link s7 s11)
	(path p6-2 s7)
	(path p6-5 s3)
	(path s7 p6-10)
	(path s8 p5-0)
	(path p11-10 s5)
	(link s4 s10)
	(path p3-1 s8)
	(link s1 s10)
	(path s5 p3-9)
	(path s5 p2-6)
	(link s11 s10)
	(path s7 p6-5)
	(link s3 s9)
	(path s2 p4-7)
	(empty truck3)
	(link s4 s1)
	(path s9 p6-4)
	(path s8 p3-2)
	(link s1 s0)
	(path p6-4 s9)
	(path p3-1 s2)
	(link s0 s1)
	(link s0 s3)
	(path p4-0 s0)
	(path p6-2 s9)
	(link s9 s5)
	(path p5-0 s11)
	(path s8 p1-0)
	(link s6 s7)
	(link s1 s3)
	(link s8 s11)
	(path p3-7 s11)
	(path s3 p6-5)
	(empty truck1)
	(path s9 p6-2)
	(link s10 s3)
	(link s5 s4)
	(empty truck2)
	(link s10 s11)
	(at truck3 s0)
	(path p1-0 s8)
	(link s11 s8)
	(path s7 p6-2)
	(link s11 s4)
	(link s6 s11)
	(link s7 s5)
	(link s0 s10)
	(path s4 p9-7)
	(path s9 p2-0)
	(link s7 s6)
	(path s11 p5-0)
	(path p3-9 s5)
	(at package4 s11)
	(path p11-10 s4)
	(path p2-3 s6)
	(link s2 s7)
	(path p4-0 s4)
	(path s4 p11-10)
	(at driver2 s6)
	(path s8 p2-6)
	(path s7 p1-0)
	(path s10 p4-7)
	(link s1 s8)
)
(:goal 
(and
<HYPOTHESIS>
))
)