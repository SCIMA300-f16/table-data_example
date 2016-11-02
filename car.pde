class Car { // object definition
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color c_, float xpos_, float ypos_, float xspeed_) { //constructor, 4 args, 
    c = c_;
    xpos=xpos_;
    ypos=ypos_;
    xspeed=(xspeed_*.01);
  }
  void display () { // display function, using the args display the 'car'1
    noStroke();
    fill(c);
    rect(xpos, ypos, 20, 16);
    fill(0);
    
    text(int(xspeed*100), xpos, ypos+12);
  
}
void move () { // move function, using the last arg as speed, reset if it hits the right side
  xpos+=xspeed;
  if (xpos> 455) { // if car hits this number from the reference send it back to beginning
    xpos= 125;
  }
}
}