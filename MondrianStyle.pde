// First Assingment
int windowWidth = 600;
int windowHeight = 400;
float lineSize = 0;
float colSize = 0;
int now = second();

color[] colors = new color[4];

void mondrianStyle() {
  background(#ffffff);
  for(int line = 0; line < windowHeight; line += lineSize + 2) {
    lineSize = random(3, 150);
    for(int col = 0; col < windowWidth; col += colSize + 2) {
      colSize = random(2, 200);
      
      color rectColor = colors[floor(random(0,4))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);
      
      strokeWeight(2);
      strokeCap(PROJECT);
      stroke(#000000);
      float x = col+colSize+1;
      float y = line+lineSize;
      line(0, y, windowWidth, y);
      line(x, line, x, y);
    }
  }
}

void setup() {
  size(windowWidth, windowHeight);
  background(#ffffff);
  
  colors[0] = color(255, 0, 0);
  colors[1] = color(0, 255,0);
  colors[2] = color(0, 0, 255);
  colors[3] = color(255, 255, 255);
  
  mondrianStyle();
}

void draw() {
  if(millis() % 1500 == 0) {
    mondrianStyle();
  }
}
