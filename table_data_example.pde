Table dreams;
int rows;
int rowCount = 0;
int x = 10;
int y = 30;

void setup() {
  size(600, 600);
  dreams = loadTable("dreams.csv");
  rows = dreams.getRowCount();
  println(rows);

  background(0);
}

void draw() {
  fill(255);
  stroke(255);
  if (rowCount<rows) {
    String id = trim(dreams.getString(rowCount, 0));
    int quality = dreams.getInt(rowCount, 1);
    float remappedQuality = map(float(quality), 0, 10, 100, width-100);
    text(id, x, y);
    rect(x+75, y-10, remappedQuality, 10);

    if (dreams.getString(rowCount, 3).equals("y")) {
      fill(255, 0, 0);
      int yorn = dreams.getInt(rowCount, 3);
      strokeWeight(3);
      point(x-6, y);
      println("bang");
    }

    y+=30;
    rowCount++;
  }
}