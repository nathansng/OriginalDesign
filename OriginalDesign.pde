
import java.util.Random;

void setup() {
  size(450,400);
  background(255, 255, 255);
}


void draw() {
  background(255, 255, 255);
  table();
  fishTank();
  volcanoShaft();
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
  beginShape();
    vertex(50, 50);
    vertex(100, 25);
    vertex(400, 25);
    vertex(350, 50);
  endShape();

  line(50, 50, 350, 50);
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
  endShape(CLOSE);

}


void volcanoShaft() {
  fill(0);
  strokeWeight(1);

  beginShape();
    vertex(200, 186);
    vertex(250, 186);
    vertex(262, 190);
    vertex(188, 190);
  endShape(CLOSE);

}


//bubbles
int xBubbles1 = (int)(Math.random()*50) + 200;
int xBubbles2 = (int)(Math.random()*50) + 200;
int xBubbles3 = (int)(Math.random()*50) + 200;
int xBubbles4 = (int)(Math.random()*50) + 200;

int yBubbles1 = 250;
int yBubbles2 = 300;
int yBubbles3 = 225;
int yBubbles4 = 250;


void bubbles() {
  fill(157, 255, 255);
  noStroke();
  ellipse(xBubbles1, yBubbles1, 20, 20);
  yBubbles1 -= 1;
  if (yBubbles1 < 35) {
    xBubbles1 = (int)(Math.random()*50) + 200;
    yBubbles1 = 250;
  }
  //bubble 2
  ellipse(xBubbles2, yBubbles2, 20, 20);
  yBubbles2 -= 2;
  if (yBubbles2 < 35) {
    xBubbles2 = (int)(Math.random()*50) + 200;
    yBubbles2 = 250;
  }
  //bubble 3
  ellipse(xBubbles3, yBubbles3, 20, 20);
  yBubbles3 -= 2.5;
  if (yBubbles3 < 35) {
    xBubbles3 = (int)(Math.random()*50) + 200;
    yBubbles3 = 250;
  }
  //bubble 4
  ellipse(xBubbles4, yBubbles4, 20, 20);
  yBubbles4 -= 1.5;
  if (yBubbles4 < 35) {
    xBubbles4 = (int)(Math.random()*50) + 200;
    yBubbles4 = 250;
  }

}

void mousePressed () {

}

void extraBubbles() {
  

  if (mouseX > 50 && mouseX < 350) { 
    fill(157, 255, 255);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
    yBubbles -= 1;
  }
}