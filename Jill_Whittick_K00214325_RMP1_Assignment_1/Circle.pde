class Circle {
  float xPos;
  float yPos;
  float cWidth;
  int cRed;
  int cGreen;
  int cBlue;

  Circle() {
    xPos = random(25, 375);
    yPos = random(25, 375);
    cWidth = random(10, 50);
    cRed = (int)random(255);
    cGreen = (int)random(255);
    cBlue = (int)random(255);
  } //End of Cirlce()

  void display() {
    fill(cRed, cGreen, cBlue);
    noStroke();
    ellipse(xPos, yPos, cWidth, cWidth);
  } //End of display()
    
  void moveUp() {
    yPos--;
  } //End of moveUp()
  
  void moveDown() {
    yPos++;
  } //End of moveDown()
  
  void moveLeft() {
    xPos--;
  } //End of moveLeft()
  
  void moveRight() {
    xPos++;
  } //End of moveRight()

} //End of Circle class