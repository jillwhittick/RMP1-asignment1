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
  }

  void paint() {
    fill(cRed, cGreen, cBlue);
    noStroke();
    ellipse(xPos, yPos, cWidth, cWidth);
  }
}