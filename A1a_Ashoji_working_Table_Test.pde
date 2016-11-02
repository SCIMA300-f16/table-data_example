//Defining Variables
int [] ypos = {20, 62, 50, 20, 100}; // [0] [1]bars [2]carfield [3]cars
int [] xpos = {10, 50, 125, 125, 400}; // [0] [1]bars [2]carfield [3]cars
int y = 35;
int rc; // row count
float [] speed = new float [12]; // new array with 12 slots
String title = "The Last Leg";
Table data;


//colors
color tan = color(222, 213, 166);
color red = color(255,0,0);
color green = color(0,255,155);
color yellow = color(255,247,0);
color blue = color(74,191,252);
//bounds for color
int b1 = 33;
int b2 = 47;

//bools
boolean go = false;

//objects
car_field bg;
Car [] days = new Car [12];

void setup() {
  background(0);
  size(500, 550);
  data = loadTable("A1a_Shoji_Andrew.csv"); //load data
  rc = data.getRowCount();
  text(title,250,20);
  
  for(int i=1; i<rc; i++){
   speed [i] = (data.getFloat(i,6));
  }
  println(speed);
  
  for (int i=1; i<rc; i++) {

    days[i] = new Car(color(tan), xpos[3], (ypos[3] + (40*i)), speed[i]); //declare car array space by this amount of y
  }

  date();
  legend();
  bar(); // show bars
  
  bg = new car_field(xpos[2], ypos[2], 350, 435, 255 );

  fill(255);
  
  text("Total Miles", xpos[2] - 80, ypos[2]-15);
  
}

void draw() {
  bg.show();  // show car field
  labels();
  
  for (int i=1; i<days.length; i++) {
    
    days[i].display(); // show cars
    if (go == true) { // if mouse clicked begin car movements
      days[i].move();
    } else if (go== false) { // if mouse clicked again, stop car movements
      days[i].display();
    }
  }

}

void mousePressed() { // boolean flipflop
  go = ! go;
}