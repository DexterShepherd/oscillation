int numPoints = 100;

void setup() {
  size(500, 500); 
  noStroke();
}

void draw() {
  background(0);
  translate(width * 0.5, height * 0.5);
  
  for (int i = 0; i < numPoints; i += 1 ) {
    float angle = map(i, 0, numPoints, 0, TWO_PI);
    float x = sin(angle + frameCount * 0.01) * 100;
    float y = cos(angle) * 100;
    for(int j = 0; j < 10; j += 1) {
      float jAngle = map(j, 0, 10, 0, TWO_PI);
      ellipse(x + sin(jAngle + angle + frameCount * 0.01) * 100, y + cos(jAngle + angle + frameCount * 0.01) * 100, 5, 5);
    }
    
  }
  
  
}