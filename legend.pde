String redm = "> " + b2 + " miles";
String greenm = "< " + b1 + " miles";
String tanm= "= my car";
String bluem= "Between " + b1 + " and " + b2 + " miles";

int s =10;
int [] xmeans = {35,125,390,215}; // xpos for legend colors
int yL = 500;
//String [] colors = {red, green, tan};
void legend(){
  noStroke();
  
  rect(25,yL,450,30); // background bar
  
  //red Legend
  fill(red);
  rect(xmeans[0],yL+s,s,s);
  fill(0);
  text(redm, xmeans[0]+20, 520);
  
  //green legend
  fill(green);
  rect(xmeans[1],yL+s,s,s);
  fill(0);
  text(greenm, xmeans[1]+20, 520);
  
  //blue legend
  fill(blue);
  rect(xmeans[3],yL+s,s,s);
  fill(0);
  text(bluem, xmeans[3]+20, 520);
  
  //tan legend
  fill(tan);
  rect(xmeans[2],yL+s,s,s);
  fill(0);
  text(tanm, xmeans[2]+20, 520);
}