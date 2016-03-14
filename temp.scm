(testsc-init 1 )
(testsc-track-nset 1 '(network_kinetics.x_position 10 ) '(transmission_info.AFRAME_1 12))
(map (lambda (x) (testsc-track-nget 1 x)) '(transmission_info.AFRAME_1 network_kinetics.x_position) )
