Bacteria[] bacteriaSize;

float x;
float y;
float bacColor;

void setup() {

  size (400, 400);
  background(0);

  bacteriaSize = new Bacteria[1000];

  for ( int i = 0; i < bacteriaSize.length; i++ ) {
    
    x = (float)(Math.random()*400);
    y = (float)(Math.random()*400);
    bacColor = (float)(Math.random()*255);
    
    bacteriaSize[i] = new Bacteria(x, y, bacColor);
  }
}   

void draw() {
  
  frameRate(144);
  background(0);
  
  for ( int i = 0; i < 1000; i++ ) {
    
    bacteriaSize[i].show();
    bacteriaSize[i].move();
  }
}  
