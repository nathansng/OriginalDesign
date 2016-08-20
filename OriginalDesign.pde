import java.util.Random;
void setup() {
  size(450,450);
  background(255, 255, 255);
}


void draw() {
  table();
  fishTank();
  System.out.println(fishX1);
  System.out.println(fishY1);
  System.out.println(fishX2);
  System.out.println(fishY2);
}

//Table 
void table () {
	strokeWeight(2);

  stroke(0);

	fill(0, 38, 8);

	//Legs of Table
	rect(50, 350, 50, 100);
	line(85, 350, 85, 460);

	//Other leg
	rect(350, 350, 50, 100);
	line(385, 350, 385, 460);

	//Table Body
	rect(-10, 250, 460, 100);
	line(0, 320, 460, 320);
}


// Fish Tank
void fishTank () {
  //front
	strokeWeight(1);
	stroke(0);
	fill(51, 193, 255);
	rect(50, 50, 300, 250);

	//top
  beginShape();
    vertex(50, 50);
    vertex(100, 25);
    vertex(400, 25);
    vertex(350, 50);
  endShape();


  //Right Side
  beginShape();
    vertex(351, 50);
    vertex(400, 25);
    vertex(400, 275);
    vertex(351, 300);
  endShape();

  
}

//Fishes
Random rand1 = new Random();
Random rand2 = new Random();
Random rand3 = new Random();
Random rand4 = new Random();

int fishX1 = rand1.nextInt(50) + 1;
int fishY1 = rand2.nextInt(50) + 1;

int fishX2 = rand3.nextInt(50) + 1;
int fishY2 = rand4.nextInt(50) + 1;

void fish() {
  
}