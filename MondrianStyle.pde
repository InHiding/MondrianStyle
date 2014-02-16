// Second Assignment
// Very simple Processing program to generate every five seconds 
// a new abstract art based on Piet Mondrian art using simple math.

int windowWidth = 1280;
int windowHeight = 720;
float lineSize = 0;
float colSize = 0;
int now = millis();

color[] colors = {#ffffff, #ff0000, #00ff00, #0000ff, #ffff00, #ff00ff, #00ffff, #000000};

void mondrianStyle() {
  for(int line = 0; line < windowHeight; line += lineSize + 2) {
    lineSize = random(3, windowWidth/3);
    for(int col = 0; col < windowWidth; col += colSize + 2) {
      colSize = random(2, windowHeight/2);
      
      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);
      
      strokeWeight(2);
      strokeCap(PROJECT);
      stroke(#000000);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, windowWidth, y);
      line(x, line, x, y);
    }
  }
}

void setup() {
  size(windowWidth, windowHeight);
  background(#ffffff);
  mondrianStyle(); // first call to avoid blank screen on the first seconds
}

void draw() {
  if(millis() > now + 5000) {
    mondrianStyle();
    now = millis();
  }
}
