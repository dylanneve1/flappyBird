Menus m;
Bird b;
Obstycles o;

void setup() {
  o = new Obstycles();
  m = new Menus();
  b = new Bird();
  size(500, 500);
  noStroke();
}

void draw() {
  m.caller();
  b.caller();
  o.caller();
}

void mousePressed() //If the mouse is pressed.
{
  b.bouncing = true; //Declare that ball is to bounce.
}
