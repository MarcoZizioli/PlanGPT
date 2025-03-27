(define (problem satellite-test)
(:domain satellite)
(:objects
		satellite0
		satellite1
		satellite2
		satellite3
		satellite4
		instrument0
		instrument1
		instrument2
		instrument3
		instrument4
		instrument5
		instrument6
		instrument7
		instrument8
		instrument9
		instrument10
		image2
		image3
		image4
		infrared1
		spectrograph0
		GroundStation1
		Phenomenon6
		Phenomenon7
		Phenomenon8
		Phenomenon12
		Phenomenon13
		Planet5
		Planet10
		Planet11
		Star0
		Star2
		Star3
		Star4
		Star9
		Star14
)
(:init
	(satellite satellite0)
	(satellite satellite1)
	(satellite satellite2)
	(satellite satellite3)
	(satellite satellite4)
	(instrument instrument0)
	(instrument instrument1)
	(instrument instrument2)
	(instrument instrument3)
	(instrument instrument4)
	(instrument instrument5)
	(instrument instrument6)
	(instrument instrument7)
	(instrument instrument8)
	(instrument instrument9)
	(instrument instrument10)
	(mode image2)
	(mode image3)
	(mode image4)
	(mode infrared1)
	(mode spectrograph0)
	(direction GroundStation1)
	(direction Phenomenon6)
	(direction Phenomenon7)
	(direction Phenomenon8)
	(direction Phenomenon12)
	(direction Phenomenon13)
	(direction Planet5)
	(direction Planet10)
	(direction Planet11)
	(direction Star0)
	(direction Star2)
	(direction Star3)
	(direction Star4)
	(direction Star9)
	(direction Star14)
	(calibration_target instrument0 Star2)
	(calibration_target instrument1 Phenomenon12)
	(calibration_target instrument2 Phenomenon6)
	(calibration_target instrument3 Phenomenon8)
	(calibration_target instrument4 Phenomenon8)
	(calibration_target instrument5 Star3)
	(calibration_target instrument6 Phenomenon8)
	(calibration_target instrument7 Star4)
	(calibration_target instrument8 Planet10)
	(calibration_target instrument9 Planet11)
	(calibration_target instrument10 GroundStation1)
	(supports instrument0 image2)
	(supports instrument0 infrared1)
	(supports instrument1 image3)
	(supports instrument1 image2)
	(supports instrument2 image2)
	(supports instrument2 image4)
	(supports instrument3 spectrograph0)
	(supports instrument3 infrared1)
	(supports instrument3 image2)
	(supports instrument4 infrared1)
	(supports instrument4 image4)
	(supports instrument5 image4)
	(supports instrument5 infrared1)
	(supports instrument5 image3)
	(supports instrument6 image3)
	(supports instrument7 image3)
	(supports instrument7 image2)
	(supports instrument8 image3)
	(supports instrument8 image3)
	(supports instrument9 image3)
	(supports instrument9 image2)
	(supports instrument10 image4)
	(supports instrument10 image2)
	(supports instrument10 infrared1)
	(power_avail satellite0)
	(power_avail satellite1)
	(power_avail satellite2)
	(power_avail satellite3)
	(power_avail satellite4)
	(on_board instrument0 satellite0)
	(on_board instrument10 satellite0)
	(on_board instrument9 satellite1)
	(on_board instrument1 satellite1)
	(on_board instrument6 satellite2)
	(on_board instrument8 satellite2)
	(on_board instrument2 satellite3)
	(on_board instrument4 satellite3)
	(on_board instrument7 satellite4)
	(on_board instrument3 satellite4)
	(pointing satellite0 Phenomenon13)
	(pointing satellite1 Phenomenon8)
	(pointing satellite2 Star2)
	(pointing satellite3 Star4)
	(pointing satellite4 Star0)
)
(:goal 
(and
<HYPOTHESIS>
))
)