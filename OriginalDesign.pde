/* Work on Volcano Code */


import java.util.Random;

void setup() {
  size(450,450);
  background(255, 255, 255);
}


void draw() {
  background(255, 255, 255);
  table();
  fishTank();
  bubbles();
  fishTankTop();
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


void fishTankTop () {
  strokeWeight(1);
  stroke(0);
  fill(51, 193, 255);

  //top
  strokeWeight(1);
  beginShape();
    vertex(50, 50);
    vertex(100, 25);
    vertex(400, 25);
    vertex(350, 50);
  endShape();
}

//Fishes
int x = 250;
int y = 250;

void fish() {
  //fill(color1, color2, color3);
  noStroke();
  ellipse(x, y, 75, 50);
  triangle(x, y, x + 50, y + 25, x + 50, y - 25);
  fill(0);
  ellipse(x - 20, y - 5, 5, 5);
}



void volcano () {
  stroke(1.5);
  strokeWeight(1);
  fill(75, 50, 0);

  //ellipse(225, 200, 100, 50);

  beginShape();
  //bottom vertex
    vertex(125, 280);
    vertex(150, 290);

    vertex(225, 295);
    
    vertex(300, 290);
    vertex(325, 280);


    //top vertex
    vertex(265, 190);
    vertex(250, 200);
    vertex(200, 200);
    vertex(185, 190);
  endShape(CLOSE);


  strokeWeight(0.5);
  //lines
  line(250, 200, 300, 290);
  line(150, 290, 200, 200);
  //center line
  line(225, 200, 225, 295);


  //top portion
  fill(0);
  beginShape();
    vertex(265, 190);
    vertex(250, 200);
    vertex(200, 200);
    vertex(185, 190);

    vertex(200, 186);
    vertex(250, 186);


  endShape(CLOSE);

}


//bubbles
int xBubbles1 = 200;
int xBubbles2;
int xBubbles3;

int yBubbles1 = 300;


void bubbles() {
  fill(157, 255, 248);
  ellipse(xBubbles1, yBubbles1, 20, 20);
  yBubbles1 -= 1;
  if (yBubbles1 < 35) {
    yBubbles1 = 250;
  }
}