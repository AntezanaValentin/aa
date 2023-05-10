float x;
float y;
float w;
float h;
float distx;
float disty;
int cant = 4;

void setup() {
  size(500, 500);
  w = width / cant;
  h = height / cant;

  frameRate(5);
}

void circulo(float x, float y, float w, float h) {
  fill(0);
  ellipse(x + w/2, y + h / 2, w, h);
}

void triangulo(float x, float y, float w, float h) {
  fill(0);
  triangle(x, y, x+w, y, x, y+h);
}




void draw() {

  for (int i = 0; i <= cant; i++) {
    disty = height / cant;
    for (int j = 0; j <= cant; j++) {
      int figura = int(random(2));
      distx = width/cant;
      noFill();
      rect(x, y, w, h);
      x = distx * j;
      switch (figura) {
      case 1:
        circulo(x + distx / 2, y + disty / 2, w / 2, h / 2);
        break;
      case 2:
        triangulo(x, y, w, h);
        break;
      }
    }
    y = disty * i;
  }
  noLoop();
}
