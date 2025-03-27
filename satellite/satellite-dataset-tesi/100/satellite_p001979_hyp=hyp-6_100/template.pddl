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
		image4
		infrared0
		infrared3
		spectrograph1
		GroundStation3
		Phenomenon8
		Phenomenon13
		Phenomenon14
		Planet5
		Planet9
		Planet10
		Star0
		Star1
		Star2
		Star4
		Star6
		Star7
		Star11
		Star12
		Star15
		Star16
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
	(mode image4)
	(mode infrared0)
	(mode infrared3)
	(mode spectrograph1)
	(direction GroundStation3)
	(direction Phenomenon8)
	(direction Phenomenon13)
	(direction Phenomenon14)
	(direction Planet5)
	(direction Planet9)
	(direction Planet10)
	(direction Star0)
	(direction Star1)
	(direction Star2)
	(direction Star4)
	(direction Star6)
	(direction Star7)
	(direction Star11)
	(direction Star12)
	(direction Star15)
	(direction Star16)
	(calibration_target instrument0 Star4)
	(calibration_target instrument1 Star15)
	(calibration_target instrument2 Planet5)
	(calibration_target instrument3 Star16)
	(calibration_target instrument4 Planet10)
	(calibration_target instrument5 Star0)
	(calibration_target instrument6 GroundStation3)
	(calibration_target instrument7 Star4)
	(calibration_target instrument8 Star12)
	(calibration_target instrument9 Star16)
	(calibration_target instrument10 GroundStation3)
	(supports instrument0 infrared3)
	(supports instrument0 image2)
	(supports instrument1 spectrograph1)
	(supports instrument1 image4)
	(supports instrument2 spectrograph1)
	(supports instrument2 infrared0)
	(supports instrument3 image4)
	(supports instrument3 infrared3)
	(supports instrument4 image4)
	(supports instrument4 image4)
	(supports instrument4 infrared3)
	(supports instrument5 spectrograph1)
	(supports instrument5 infrared3)
	(supports instrument5 image4)
	(supports instrument6 infrared3)
	(supports instrument6 infrared0)
	(supports instrument7 image4)
	(supports instrument7 image2)
	(supports instrument8 image4)
	(supports instrument9 infrared0)
	(supports instrument9 spectrograph1)
	(supports instrument10 infrared3)
	(supports instrument10 infrared0)
	(supports instrument10 image4)
	(power_avail satellite0)
	(power_avail satellite1)
	(power_avail satellite2)
	(power_avail satellite3)
	(power_avail satellite4)
	(on_board instrument5 satellite0)
	(on_board instrument7 satellite0)
	(on_board instrument6 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument9 satellite2)
	(on_board instrument1 satellite2)
	(on_board instrument8 satellite3)
	(on_board instrument3 satellite3)
	(on_board instrument0 satellite4)
	(on_board instrument4 satellite4)
	(pointing satellite0 Planet5)
	(pointing satellite1 Star12)
	(pointing satellite2 Phenomenon14)
	(pointing satellite3 Star1)
	(pointing satellite4 Star11)
)
(:goal 
(and
<HYPOTHESIS>
))
)