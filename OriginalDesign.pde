void setup() {
  size(400,400);
}


void draw() {
  table();
  fishTank();
}

//Table 
void table () {
	strokeWeight(2);

	fill(0, 38, 8);

	//Legs of Table
	rect(50, 350, 50, 100);
	line(85, 350, 85, 400);

	//Other leg
	rect(300, 350, 50, 100);
	line(335, 350, 335, 400);

	//Table Body
	rect(-10, 250, 410, 100);
	line(0, 320, 400, 320);
}


// Fish Tank
void fishTank () {
	strokeWeight(1);
	stroke(0);
	fill(255, 255, 255);
	rect(50, 50, 300, 250);

	//top
	beginShape();
	vertex(50, 50);
	vertex(100, 25);
	vertex(400, 25);
	
	endShape();
}

