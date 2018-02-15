int radius = 200;
int numPoints = 300;

float phase = 0.0;
void setup() {
  size(800, 800);
  background(0);
  noStroke();
}

void draw() {
  fill(0, 100);
  rect(0, 0, width, height);
  translate(width * 0.5, height * 0.5);

  fill(255);

  phase = map((frameCount * 0.1) % 100, 0, 100, 0, TWO_PI);


  for ( int i = 0; i < numPoints; i += 1 ) {
    float angle = map(i, 0, numPoints, 0, TWO_PI);
    for ( int j = 0; j < 10; j += 1) {
      float jAngle = map(j, 0, 10, 0, TWO_PI);
      float x = sin(sin(phase + jAngle) * angle + phase) * radius;
      float y = cos(cos(phase + jAngle) * angle + phase) * radius;
      ellipse(x, y, 10, 10);
    }
  }
}