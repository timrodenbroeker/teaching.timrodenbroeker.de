void setup() {
  rectMode(CENTER);
  size(400, 300);
  noStroke();
  fill(#000000);
}

void draw() {
  background(#f1f1f1);
  ellipse(mouseX, mouseY, 40, 40);
  
  gif(100,2,60);
}
