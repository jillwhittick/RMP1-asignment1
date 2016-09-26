class Face {

  void paint() {
    paint(0,0);
  }
  
  void paint(int xPos, int yPos) {
    /* pushMatrix saves the position of the current coordiante system
       onto what is known as the matrix stack (like a stack of files or
       plates).
    */
    pushMatrix();
    
    // Next I move (translate) the coordinate system by the specified 
    // xPos and yPos.
    translate(xPos, yPos);
    
    // Set the fill color
    fill(255,0,0);
    
    // Notice that I always draw the rectangle at 0, 0.
    // Rather than draw it at different x and y positions
    // I move the coordinate system itself.
    rect(0, 0, 100, 50);
    
    fill(0);
    ellipse(25, 15, 10, 10);
    
    ellipse(75, 15, 10, 10);
    
    // Restore the old coordinate system
    popMatrix();
    
  }
}