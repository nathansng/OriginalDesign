Bubbles [] bubble;

void setup() {
  size(450,400);
  background(255, 255, 255);

  bubble = new Bubbles [35];

  for (int i = 0; i < bubble.length; i ++) {
    bubble[i] = new Bubbles();
  }
}

void draw() {
  background(255, 255, 255);
  table();
  fishTank();
  volcanoShaft();

  for (int i = 0; i < bubble.length; i ++) {
    bubble[i].move();
    bubble[i].show();
    bubble[i].respawn();
  }



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


class Bubbles {
  double myX, myY, mySpeed, mySize;
  int myColor;

  Bubbles() {
    myX = (float)(Math.random()*50) + 200;
    myY = 250;
    mySpeed = (float)(Math.random() * 2) + 2;
    mySize = 20;
    myColor = color(157, 255, 255);
  }

  void show () {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }

  void move () {
    myY -= mySpeed;

    if (myX <= 75) {
      myX += (float)(Math.random() * 2);
    } else if (myX >= 325) {
      myX += (float)(Math.random() * 2) - 1;
    } else if (myX >= 25 && myX <= 325) {
      myX += (float)(Math.random() * 2) - 1;
    }
  }

  void respawn () {
    if (myY <= 45) {
      myY = 250;
      myX = (float)(Math.random()*50) + 200;
      mySpeed = (float)(Math.random() * 2) + 2;
    }
  }

}










