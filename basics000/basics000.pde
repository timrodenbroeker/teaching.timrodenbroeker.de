color black = #000000;
color white = #f1f1f1;
color primary = #ff0000;

void setup() {
  rectMode(CENTER);
  size(800, 600);
  noStroke();
  fill(primary);
}

void draw() {
  background(#f1f1f1);
  rect(mouseX, mouseY, 70, 70);
  gif(100,1,60);
}
