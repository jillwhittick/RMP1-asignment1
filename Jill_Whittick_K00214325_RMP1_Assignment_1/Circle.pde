// start of Circle class
class Circle {

  // declare variables for the attributes to draw an ellipse
  float xPos;
  float yPos;
  float cWidth;
  
  // declare variable for the attributes of fill rgb
  int cRed;
  int cGreen;
  int cBlue;

  // start of Circle() function
  Circle() {
    
    // initialize xPos & yPos as random floats, min 25 and max width minus 25 
    // no circle will be drawn outside the canvas size
    xPos = random(25, width-25);
    yPos = random(25, height-25);
    
    // initalizet cWidth as a random float, min 10 and max 50
    cWidth = random(10, 50);
    
    // initalize cRed, cGreen, cBlue as random ints, with max of 255
    cRed = (int)random(255);
    cGreen = (int)random(255);
    cBlue = (int)random(255);
    
  } // end of Cirlce()


  // start of Display() fuction
  void display() {
    
    // set fill using the random generated cRed, cGreen & cBlue ints
    // opacity set to 150 so circles that are behind other circles can be seen
    fill(cRed, cGreen, cBlue, 150);
    
    // remove stroke from circles
    noStroke();
    
    // set ellipse using the random generated xPos, yPos & cWidth floats
    //cWidth used for both width and height to make circle
    ellipse(xPos, yPos, cWidth, cWidth);
    
  } // end of display()


  //start of moveUp() function
  //triggered when Up arrow is pressed
  void moveUp() {
    
    // circles are moved up the canvas by decreasing the yPos
    yPos--;
    
  } // end of moveUp()
  
  
  //start of moveDown() function
  //triggered when Down arrow is pressed
  void moveDown() {
    
    // circles are moved down the canvas by increasing the yPos    
    yPos++;
    
  } // end of moveDown()
  
  
  //start of moveLeft() function
  //triggered when Left arrow is pressed
  void moveLeft() {
    
    // circles are moved to the left by decreasing the xPos    
    xPos--;
    
  } // end of moveLeft()
  
  
  //start of moveRight() function
  //triggered when Right arrow is pressed
  void moveRight() {
    
    // circles are moved to the right by increasing the xPos    
    xPos++;
    
  } // end of moveRight()

} // end of Circle class