Menus m;
Bird b;
Obstycles o;
Events e;

void setup() {
  e = new Events();
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
  e.caller();
}

void mousePressed() //If the mouse is pressed.
{
  b.bouncing = true; //Declare that ball is to bounce.
}
