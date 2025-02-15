void setup() {
  size(500, 500);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  fractalStar(width / 2, height / 2, 80, 4);
}

void fractalStar(float x, float y, float size, int depth) {
  if (depth == 0) 
  return;
  
  Star(x, y, size);
  float newSize = size / 2;
  fractalStar(x - size, y, newSize, depth - 1);
  fractalStar(x + size, y, newSize, depth - 1);
  fractalStar(x, y - size, newSize, depth - 1);
  fractalStar(x, y + size, newSize, depth - 1);
}

void Star(float x, float y, float size) {
  beginShape();
  for (int i = 0; i < 10; i++) {
    fill(255,253,55);
    float angle = PI / 4 * i;
    float r = (i % 2 == 0) ? size : size / 2;
    vertex(x + cos(angle) * r, y + sin(angle) * r);
  }
  endShape(CLOSE);
}
