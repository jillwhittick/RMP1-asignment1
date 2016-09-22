class Circle {
  float xPos;
  float yPos;
  float cWidth;
  int cRed;
  int cGreen;
  int cBlue;

  Circle() {
    xPos = random(400);
    yPos = random(400);
    cWidth = random(200);
    cRed = (int)random(255);
    cGreen = (int)random(255);
    cBlue = (int)random(255);
  }

  void paint() {
    fill(cRed, cGreen, cBlue);
    ellipse(xPos, yPos, cWidth, cWidth);
  }
}