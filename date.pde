void date(){ // show dates in a column, leaving it as a string.

 for (int i=0; i<rc; i++) {
 text((data.getString(i, 0)),10, y);
 y+=40;
}
 
}
  //for (int i=0; i<data.length; i++) {
  //  String [] splitD = split(data[i], ",");
  //  text(splitD[0], xpos[0], y);
  //  y+=40; //y offset
  //  }