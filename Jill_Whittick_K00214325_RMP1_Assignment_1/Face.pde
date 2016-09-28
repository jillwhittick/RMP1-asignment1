// start of Face class
class Face {

  // start of display() function
  void display() {
    
    // set xPos & yPos to specify coordinate system
    // center of canvas
    display(width/2, height/2);
    
  } // end of display()
  
  
  // start of display(x, y) function
  void display(int xPos, int yPos) {
        
    // save the current coordiante system
    pushMatrix();
    
    // move the coordinate system by the specified xPos and yPos.
    translate(xPos, yPos);
  
    // set colour of face
    fill(255,230,230);
    // draw ellipse for face
    ellipse(0, 0, 150, 150);
    
    // draw 2 ellipses for ears
    ellipse(75, 0, 25, 25);
    ellipse(-75, 0, 25, 25);
    
    // draw ellipse of chin
    ellipse(0, 65, 45, 25);
    
    // set colour for nose
    fill(255, 204, 204);
    // draw ellipse for nose
    ellipse(0, 35, 15, 10);

    // set color for mouth
    fill(255, 153, 153);
    // draw arc for mouth
    arc(0, 50, 15, 20, 0, PI);
    
    //set colour for cheeks
    fill(255, 190, 190);
    // draw 2 ellipses for cheeks
    ellipse(-25, 35, 20, 20);
    ellipse(25, 35, 20, 20);
 
    //eyes
    // set colour (white) for 1st layer of eye
    fill(255); 
    // draw 2 ellipses for whites of eyes
    ellipse(-25, 15, 15, 15);
    ellipse(25, 15, 15, 15);
    
    // set colour (green) for 2nd layer of eye
    fill(0, 255, 0);
    // draw 2 ellipses for colour of eyes
    ellipse(-25, 15, 10, 10);
    ellipse(25, 15, 10, 10);   
    
    // set colour (black) for 3rd layer of eye
    fill(0); 
    // draw 2 ellipses for center of eyes
    ellipse(-25, 15, 7.5, 7.5);
    ellipse(25, 15, 7.5, 7.5);
    
    // set colour (white) for eye sparkle
    fill(255);
    // draw 2 ellipses for eye sparkle
    ellipse(-23, 13, 2.5, 2.5);
    ellipse(27, 13, 2.5, 2.5);    
    
    // Hat colours will change depending on the quadrant the mouse is located
    // Mouse located in top left quadrant
    if ((mouseX <= width/2) && (mouseY <= height/2)){
    
      // hat (Tipperary colours)
      // set colour (blue) of outer stripe
      fill(0, 0, 255);
      // draw arc for hat shape
      arc(0, -5, 150, 200, -PI, 0);
      
      // set colour (yellow) of middle stripes
      fill(255, 255, 0);
      // draw arc for middle stripes
      arc(0, -5, 100, 200, -PI, 0);    
  
      // set colour (blue) of inner stripes
      fill(0, 0, 255);
      // draw arc for inner stripes
      arc(0, -5, 50, 200, -PI, 0);    
      
      //brim
      // set colour (yellow) of hat brim
      fill(255, 255, 0);
      // draw arc for hat brim
      arc(0, -5, 150, 25, 0, PI);
      
      //button
      // set colour (yellow) of button
      fill(255, 255, 0);
      // draw arc for hat button
      ellipse(0, -105, 15, 10);
    
    }
    
    // Mouse located in bottom left quadrant
    else if ((mouseX <= width/2) && (mouseY > height/2)){
    
      // hat (Cork colours)
      // set colour (red) of outer stripe
      fill(255, 0, 0);
      // draw arc for hat shape
      arc(0, -5, 150, 200, -PI, 0);
      
      // set colour (white) of middle stripes
      fill(255);
      // draw arc for middle stripes
      arc(0, -5, 100, 200, -PI, 0);    
  
      // set colour (red) of inner stripes
      fill(255, 0, 0);
      // draw arc for inner stripes
      arc(0, -5, 50, 200, -PI, 0);    
      
      //brim
      // set colour (white) of hat brim
      fill(255);
      // draw arc for hat brim
      arc(0, -5, 150, 25, 0, PI);
      
      //button
      // set colour (red) of button
      fill(255, 0, 0);
      // draw arc for hat button
      ellipse(0, -105, 15, 10);
    
    }   
        
    // Mouse located in top right quadrant
    else if ((mouseX > width/2) && (mouseY <= height/2 )){
    
      // hat (Limerick colours)
      // set colour (green) of outer stripe
      fill(0, 255, 0);
      // draw arc for hat shape
      arc(0, -5, 150, 200, -PI, 0);
      
      // set colour (white) of middle stripes
      fill(255);
      // draw arc for middle stripes
      arc(0, -5, 100, 200, -PI, 0);    
  
      // set colour (green) of inner stripes
      fill(0, 255, 0);
      // draw arc for inner stripes
      arc(0, -5, 50, 200, -PI, 0);    
      
      //brim
      // set colour (white) of hat brim
      fill(255);
      // draw arc for hat brim
      arc(0, -5, 150, 25, 0, PI);
      
      //button
      // set colour (green) of button
      fill(0, 255, 0);
      // draw arc for hat button
      ellipse(0, -105, 15, 10);
    
    }
    
      // Mouse located in bottom right quadrant
      else if ((mouseX > width/2) && (mouseY > height/2 )){
    
      // hat (Kerry colours)
      // set colour (green) of outer stripe
      fill(0, 255, 0);
      // draw arc for hat shape
      arc(0, -5, 150, 200, -PI, 0);
      
      // set colour (yellow) of middle stripes
      fill(255, 255, 0);
      // draw arc for middle stripes
      arc(0, -5, 100, 200, -PI, 0);    
  
      // set colour (green) of inner stripes
      fill(0, 255, 0);
      // draw arc for inner stripes
      arc(0, -5, 50, 200, -PI, 0);    
      
      //brim
      // set colour (yellow) of hat brim
      fill(255, 255, 0);
      // draw arc for hat brim
      arc(0, -5, 150, 25, 0, PI);
      
      //button
      // set colour (yellow) of button
      fill(0, 255, 0);
      // draw arc for hat button
      ellipse(0, -105, 15, 10);
    
    }
        
    // restore the old coordinate system
    popMatrix();
    
  } // end of display(x, y)

} // end of Face class