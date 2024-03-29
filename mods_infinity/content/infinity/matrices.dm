/// This override needed to be able perform circle animation.
/atom/SpinAnimation(speed = 10, loops = -1, clockwise = 1, segments = 3)
	if(!segments)
		return

	var/segment = 360 / segments

	if(!clockwise)
		segment = -segment

	var/list/matrices = list()
	for(var/i in 1 to segments - 1)
		var/matrix/M = matrix(transform)
		M.Turn(segment*i)
		matrices += M

	var/matrix/last = matrix(transform)
	matrices += last

	speed /= segments

	animate(src, transform = matrices[1], time = speed, loops)
	for(var/i in 2 to segments) //2 because 1 is covered above
		animate(transform = matrices[i], time = speed)
		//doesn't have an object argument because this is "Stacking" with the animate call above
		//3 billion% intentional
