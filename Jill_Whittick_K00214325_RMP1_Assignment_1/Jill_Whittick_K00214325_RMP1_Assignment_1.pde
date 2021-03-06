/*  Jill Whittick - K00214325 - Assignment 1

    This Processing sketch:
    - Draws one face and 20 random sized, colored and positioned circles on
    the screen. All circles have a width greater then 10 pixels or less then 
    50 pixels.
    - The face is modeled using a class and creates using a object.
    - The 20 circles are stored in an array and are modelled in a Circle class.
    - The face follows the mouse pointer around the screen.
    - Hat will change colour as it is moved into different quadrants
    - All circles move as a group using the up/down/left/right arrow keys. */

// declare an array of Circle classes
Circle[] circles;

// declare varialbe for the Face class
Face face;

// declare and initialize variable to store the number of circles to be on screen
int numCircles = 20;

//declare and initialize variable for background colour
int backgroundColor = 245;

// declare boolean to track if mouse is on the screen
// face will appear in middle of the screen until mouse moves on canvas
boolean mouseOn = false;


// start of setup() function
void setup() {
  
  // declare size of canvas
  size(500, 500);
  
  // set canvas background colour
  background(backgroundColor);
  
  // create the circles array
  circles = new Circle[numCircles];
  
  
  // for loop used to initalize the circles array
  for (int i=0; i<numCircles; i++) {
    
    // initialize the circles array
    // create Cirlce object
    circles[i] =  new Circle();
    
  } // end of for loop
  
  // create Face object
  face = new Face();

} // end of setup()


// start of draw() function
void draw() {
  
  // set background colour
  background(backgroundColor);
  
  // for loop used to draw circle objects from the circles array
  for (int i=0; i<numCircles; i++) {
    
    // draw Circle object onto canvas
    circles[i].display();

  } // end of for loop
  
  // draw Face object onto canvas
  // face object will move to to follow mouse
  //face.display();

  // if statement used to determine if mouse has been on canvas
  if ((mouseOn == false) && (mouseX == 0) && (mouseY == 0)) {
    
    // set face position to middle of screen
    face.display(width/2, height/2);
    
  } // end of if
  
  // mouse has been on screen
  else {
    // set mouseOn boolean to true
    mouseOn = true;

    // set face position to follow mouse
    face.display(mouseX, mouseY);

  } // end of else
  
} // end of draw()


// start of keyPressed() function
void keyPressed() { 
  
  // if statement to detect if special key has been pressed
  if(key == CODED) {
    
    // if statement to detect 'UP' arrow key pressed
    if (keyCode == UP) {
      
      // for loop used to move the array of circles UP
      for (int i=0; i<numCircles; i++) {
        
        // all circles move up
        circles[i].moveUp();
        
      } // end of for loop
    } // end of UP if statement
    
    
    // if statement to detect 'DOWN' arrow key pressed
    else if (keyCode == DOWN) {
      
    // for loop used to move the array of circles DOWN
    for (int i=0; i<numCircles; i++) {
      
        // all circles move down
        circles[i].moveDown();
        
      } // end of for loop
    } // end of DOWN else/if statement
    
    
    // if statement to detect 'LEFT' arrow key pressed
    else if (keyCode == LEFT) {
      
      //for loop used to move the array of circles to the LEFT
      for (int i=0; i<numCircles; i++) {
        
        // all circles move left
        circles[i].moveLeft();
        
      } // end of for loop
    } // end of LEFT else/if statement
    
    
    // if statement to detect 'RIGHT' arrow key pressed
    else if (keyCode == RIGHT) {
      
      // for loop used to move the array of circles to the RIGHT
      for (int i=0; i<numCircles; i++) {
        
        // all circles move right
        circles[i].moveRight();
        
      } // end of for loop
      
    } // end of RIGHT else/if statement
    
  } // end of key if statment
  
} // end of keyPressed()