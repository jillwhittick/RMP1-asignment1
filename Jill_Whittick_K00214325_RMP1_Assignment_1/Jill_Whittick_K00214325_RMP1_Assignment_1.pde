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