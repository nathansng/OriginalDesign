/* Work on Volcano Code */


import java.util.Random;

Random randColor1 = new Random();
Random randColor2 = new Random();
Random randColor3 = new Random();

int color1 = randColor1.nextInt(255) + 0;
int color2 = randColor2.nextInt(255) + 0;
int color3 = randColor3.nextInt(255) + 0; 

void setup() {
  size(450,450);
  background(255, 255, 255);
}


void draw() {
  table();
  fishTank();
  //fish();
  volcano();
}

//Table 
void table () {
	strokeWeight(1);

  stroke(0);

	//fill(0, 38, 8);
  fill(184);

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

  //edges
  strokeWeight(0.5);
  line(100, 25, 100, 275);
  line(100, 275, 50, 300);
  line(100, 275, 400, 275);

	//top
  strokeWeight(1);
  beginShape();
    vertex(50, 50);
    vertex(100, 25);
    vertex(400, 25);
    vertex(350, 50);
  endShape();



  strokeWeight(1);
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

int x = 250;
int y = 250;

void fish() {
  fill(color1, color2, color3);
  noStroke();
  ellipse(x, y, 75, 50);
  triangle(x, y, x + 50, y + 25, x + 50, y - 25);
  fill(0);
  ellipse(x - 20, y - 5, 5, 5);
}



void volcano () {
  stroke(0);
  strokeWeight(1);
  fill(75, 50, 0);

  //ellipse(225, 200, 100, 50);

  beginShape();
    vertex(125, 290);
    vertex(325, 290);
    vertex(275, 190);
    vertex(175, 190);
  endShape(CLOSE);

}