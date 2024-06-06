function scrCharLookAt(dir) {
	if (dir <= 22.5 || dir > 337.5) {
		face = "R";
	} else if (dir > 67.5 && dir < 112.5) {
		face = "U";
	} else if (dir > 157.5 && dir < 202.5) {
		face = "L";
	}  else if (dir > 247.5 && dir < 292.5) {
		face = "D";
	}
}