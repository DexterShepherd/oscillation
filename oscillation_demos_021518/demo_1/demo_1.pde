float freq1 = 0.1;
float freq2 = 0.01;
float drive = 0.0;
float speed = 0.05;


void setup() {
  size(500, 500); 
  noStroke();
  background(250, 255, 255);
}

void draw() {
  fill(250, 255, 255, 20);
  rect(0, 0, width, height);
  
  
  translate(width * 0.5, height * 0.5);
  fill(250, 50, 110);
  
  for(int i = 0; i < 50; i ++) {
    pushMatrix();
    float angle = map(i, 0, 50, 0, TWO_PI);
    float x = sin(drive + angle) * cos(sin(drive) + angle) * 200;
    float y = cos(drive - angle) * sin(cos(drive) + angle) * 100;

    translate(x, y);
    rotate(angle + drive);
    ellipse(x, y, sin(drive + angle) * 5, sin(drive + angle) * 5);
    popMatrix();
  }
  

  
  drive += speed;
}