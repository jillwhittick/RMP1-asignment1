class Face {

  void display() {
    display(200, 200);
  } //End of display()
  
  void display(int xPos, int yPos) {
    // save the current coordiante system
    pushMatrix();
    
    // Next I move (translate) the coordinate system by the specified 
    // xPos and yPos.
    translate(xPos, yPos);
  
    // face
    fill(255,230,230);
    ellipse(0, 0, 150, 150);
    
    //ears
    ellipse(75, 0, 25, 25);
    ellipse(-75, 0, 25, 25);
    
    //chin
    fill(255, 230, 230);
    ellipse(0, 65, 45, 25);
    
    //nose
    fill(255, 204, 204);
    ellipse(0, 35, 15, 10);
    
    // hat
    // outer stripe
    fill(0, 0, 255); //blue
    arc(0, -5, 150, 200, -PI, 0);
    
    // middle stripe
    fill(255, 255, 0); //yellow
    arc(0, -5, 100, 200, -PI, 0);    
    
    // inner stripe
    fill(0, 0, 255);
    arc(0, -5, 50, 200, -PI, 0);    
    
    //brim
    fill(255, 255, 0);
    arc(0, -5, 150, 25, 0, PI);
    
    //button
    fill(255, 255, 0);
    ellipse(0, -105, 15, 10);
    
    
    //eyes
    fill(255); //white
    ellipse(-25, 15, 15, 15);
    ellipse(25, 15, 15, 15);
    
    fill(255); //green
    fill(0, 255, 0);
    ellipse(-25, 15, 10, 10);
    ellipse(25, 15, 10, 10);   
    
    fill(0);  //black
    ellipse(-25, 15, 7.5, 7.5);
    ellipse(25, 15, 7.5, 7.5);
    
    // eye sparkle
    fill(255);
    ellipse(-23, 13, 2.5, 2.5);
    ellipse(27, 13, 2.5, 2.5);
    
    //mouth
    fill(255, 153, 153);
    arc(0, 50, 15, 20, 0, PI);
    
    //cheeks
    fill(255, 190, 190);
    ellipse(-25, 35, 20, 20);
    ellipse(25, 35, 20, 20);
    
    
    // Restore the old coordinate system
    popMatrix();
    
  } //End of display(xPos, yPos)
}