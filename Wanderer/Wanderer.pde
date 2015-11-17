//declare variables

PVector loc,vel;
int diam=80;

void setup() {
  //set size of canvas
  size(800, 600);
loc= new PVector(width/2, height/2);
vel=  PVector.random2D();
vel.mult(10);
  //initialize variables
}

void draw() {
  //draw background to cover previous frame
  background(0);


  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add velocity to position
 loc.add(vel);

  //wrap the ball's position
  if (loc.x >= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y  <= 0) {
    loc.y = height ;
  }
}