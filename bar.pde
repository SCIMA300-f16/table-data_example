void bar() {
   //lBar = data.getStringColumn(6);
   //println(lBar);
  for (int i=1; i<rc; i++) { // call driven miles data again 
   {
    if(speed[i] <= b1){ // if miles driven is less than this number fill green
      fill(green);
      
    }
    else if (speed[i]>=b2){ // if miles driven is more than this number fill red
      fill(red);
    }
   
    else{ // anything else fill white
      fill(blue);
  
   }
   rect(xpos[1], ypos[1], speed[i], 16); // draw bars
    
    fill(0);
    text(int(speed[i]),xpos[1]+317,ypos[1]+13);
    
    ypos[1]+=40; // y offset 40 for spacing
    
}
  }
}