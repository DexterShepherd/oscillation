float freqA = random(20);
float freqB = random(20);

float freqC = random(20);
float freqD = random(20);

float speed = 0.1;

float amp = 100;


int numPoints = 10;

void setup() {
  size(800, 800); 
  background(255, 253, 255);

}

void draw() {
  noStroke();
  fill(255, 253, 255, 50);
  rect(0, 0, width, height);
  
  stroke(0);
  noFill();
  translate(width * 0.5, height * 0.5);
   
   
   for(int i = 0; i < numPoints; i ++ ) {
     float angleA = map(i, 0, numPoints / freqA, 0, TWO_PI);
     float angleB = map(i, 0, numPoints / freqB, 0, TWO_PI);
     
     float angleC = map(i, 0, numPoints / freqC, 0, TWO_PI);
     float angleD = map(i, 0, numPoints / freqD, 0, TWO_PI);
     
     
     float x = cos(angleA + frameCount * speed) * sin(angleB + frameCount * speed) * amp;
     float y = sin(angleC + frameCount * speed) * sin(angleD + frameCount * speed) * amp;
     
     line(cos(angleA + frameCount * speed) * amp, sin(angleC + frameCount * speed) * amp,
          sin(angleB + frameCount * speed) * amp, sin(angleD + frameCount * speed) * amp);
     //ellipse(x, y, 2, 2);
   }
   
   
  
}