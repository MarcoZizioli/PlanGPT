(define (problem blocksworld-test)
(:domain blocksworld)
(:objects
	A C D E O P R W 
)
(:init
	(arm-empty)
	(clear A)
	(clear D)
	(on A O)
	(on-table E)
	(on P C)
	(on D P)
	(on R W)
	(on C R)
	(on O E)
	(on-table W)
)
(:goal 
(and
<HYPOTHESIS>
))
)