(define (problem DLOG-3-3-6)
  (:domain driverlog)
  (:objects
  driver1
  driver2
  driver3
  truck1
  truck2
  truck3
  package1
  package2
  package3
  package4
  package5
  package6
  s0
  s1
  s2
  s3
  s4
  s5
  s6
  s7
  s8
  s9
  p0-1
  p1-2
  p2-3
  p2-5
  p3-2
  p3-7
  p4-6
  p4-7
  p6-2
  p6-5
  p6-8
  p7-9
  p8-3
  p8-5
  p9-4
  )
  (:init
  (at driver1 s9)
  (DRIVER driver1)
  (at driver2 s2)
  (DRIVER driver2)
  (at driver3 s2)
  (DRIVER driver3)
  (at truck1 s2)
  (empty truck1)
  (TRUCK truck1)
  (at truck2 s1)
  (empty truck2)
  (TRUCK truck2)
  (at truck3 s8)
  (empty truck3)
  (TRUCK truck3)
  (at package1 s5)
  (OBJ package1)
  (at package2 s5)
  (OBJ package2)
  (at package3 s9)
  (OBJ package3)
  (at package4 s3)
  (OBJ package4)
  (at package5 s1)
  (OBJ package5)
  (at package6 s4)
  (OBJ package6)
  (LOCATION s0)
  (LOCATION s1)
  (LOCATION s2)
  (LOCATION s3)
  (LOCATION s4)
  (LOCATION s5)
  (LOCATION s6)
  (LOCATION s7)
  (LOCATION s8)
  (LOCATION s9)
  (LOCATION p0-1)
  (LOCATION p1-2)
  (LOCATION p2-3)
  (LOCATION p2-5)
  (LOCATION p3-2)
  (LOCATION p3-7)
  (LOCATION p4-6)
  (LOCATION p4-7)
  (LOCATION p6-2)
  (LOCATION p6-5)
  (LOCATION p6-8)
  (LOCATION p7-9)
  (LOCATION p8-3)
  (LOCATION p8-5)
  (LOCATION p9-4)
  (path s0 p0-1)
  (path p0-1 s0)
  (path s1 p0-1)
  (path p0-1 s1)
  (path s1 p1-2)
  (path p1-2 s1)
  (path s2 p1-2)
  (path p1-2 s2)
  (path s2 p2-3)
  (path p2-3 s2)
  (path s3 p2-3)
  (path p2-3 s3)
  (path s2 p2-5)
  (path p2-5 s2)
  (path s5 p2-5)
  (path p2-5 s5)
  (path s3 p3-7)
  (path p3-7 s3)
  (path s7 p3-7)
  (path p3-7 s7)
  (path s4 p4-6)
  (path p4-6 s4)
  (path s6 p4-6)
  (path p4-6 s6)
  (path s4 p4-7)
  (path p4-7 s4)
  (path s7 p4-7)
  (path p4-7 s7)
  (path s6 p6-2)
  (path p6-2 s6)
  (path s2 p6-2)
  (path p6-2 s2)
  (path s6 p6-5)
  (path p6-5 s6)
  (path s5 p6-5)
  (path p6-5 s5)
  (path s6 p6-8)
  (path p6-8 s6)
  (path s8 p6-8)
  (path p6-8 s8)
  (path s7 p7-9)
  (path p7-9 s7)
  (path s9 p7-9)
  (path p7-9 s9)
  (path s8 p8-3)
  (path p8-3 s8)
  (path s3 p8-3)
  (path p8-3 s3)
  (path s8 p8-5)
  (path p8-5 s8)
  (path s5 p8-5)
  (path p8-5 s5)
  (path s9 p9-4)
  (path p9-4 s9)
  (path s4 p9-4)
  (path p9-4 s4)
  (link s0 s1)
  (link s1 s0)
  (link s0 s2)
  (link s2 s0)
  (link s0 s5)
  (link s5 s0)
  (link s0 s7)
  (link s7 s0)
  (link s0 s8)
  (link s8 s0)
  (link s1 s3)
  (link s3 s1)
  (link s1 s5)
  (link s5 s1)
  (link s1 s6)
  (link s6 s1)
  (link s2 s3)
  (link s3 s2)
  (link s3 s0)
  (link s0 s3)
  (link s3 s9)
  (link s9 s3)
  (link s4 s1)
  (link s1 s4)
  (link s4 s9)
  (link s9 s4)
  (link s5 s4)
  (link s4 s5)
  (link s6 s3)
  (link s3 s6)
  (link s6 s4)
  (link s4 s6)
  (link s6 s5)
  (link s5 s6)
  (link s7 s1)
  (link s1 s7)
  (link s7 s6)
  (link s6 s7)
  (link s7 s8)
  (link s8 s7)
  (link s8 s1)
  (link s1 s8)
  (link s8 s4)
  (link s4 s8)
  (link s8 s6)
  (link s6 s8)
  (link s9 s7)
  (link s7 s9)
  (link s9 s8)
  (link s8 s9)
)
(:goal (and
  <HYPOTHESIS>
))
)