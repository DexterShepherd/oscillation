void setup() {
  size(500, 500);
  background(0);
  noStroke();
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  translate(width * 0.5, height * 0.5);
  fill(255);
  for(int i = 0; i < 10; i += 1) {
    float theta = map(i, 0, 10, 0, TWO_PI);
    for(int j = 0; j < 10; j += 1) {
      float thetaJ = map(j, 0, 10, 0, TWO_PI);
      ellipse(sin(theta + frameCount * 0.01) * sin(thetaJ + frameCount * 0.01) * 100,
              cos(theta + frameCount * 0.02) * cos(thetaJ + frameCount * 0.01) * 100,
              5, 5);
    }
  }
}