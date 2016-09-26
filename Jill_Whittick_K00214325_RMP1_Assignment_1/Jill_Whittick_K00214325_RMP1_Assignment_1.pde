Circle[] circles;  

void setup() {
  size(400, 400);
  background(0);
  
  circles = new Circle[20];
  
  for (int i=0; i<20; i++) {
    circles[i] = new Circle();
  }

}

void draw() {
  background(0);
  
  for (int j=0; j<20; j++) {
    circles[j].display();
  }
  
}

void keyPressed() { 
  if(key == CODED) {
    if (keyCode == UP) {
      for (int i=0; i<20; i++) {
        circles[i].moveUp();
      }
    }
    else if (keyCode == DOWN) {
      for (int i=0; i<20; i++) {
        circles[i].moveDown();
      }
    }
    else if (keyCode == LEFT) {
      for (int i=0; i<20; i++) {
        circles[i].moveLeft();
      }
    }
    else if (keyCode == RIGHT) {
      for (int i=0; i<20; i++) {
        circles[i].moveRight();
      }

    }
  } 
} // End of keyPressed()