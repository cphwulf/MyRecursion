int min;

void setup() {
  size(800, 600);
  min = 20;
  noFill();
  strokeWeight(1);
  drawRect(0+20, 40, width-40, height-50,1);
}

void drawRect(float x, float y, float w, float h, int factor) {
  fill(0,factor*30,0);
  rect(x,y,w,h);
  println("X: " + x + " Y: " + y + " w: " + w + " H: " + h);
  if (x<width && y<height && w-(min*3.0)>0 && h > 0) {
    drawRect(x+min, y+min, w-(min*3.0), h-(min*2.2),factor+1);
  } else {
    println("done ..");
  }
}
