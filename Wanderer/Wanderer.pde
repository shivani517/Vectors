//declare variables

PVector loc, vel, acc;
int diam=30;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  loc= new PVector(width/2, height/2);
  vel=  new PVector(0, 0);
  acc= PVector.random2D();
  acc.mult(0.1);
}

void draw() {
  background(0); //draw background

    fill(random(1,50),random(14,324),random(123,42));
  ellipse(loc.x, loc.y, diam, diam); //draw ball

  loc.add(vel);   //add velocity to position

  vel.add(acc);   //add acceleration

  acc=PVector.random2D();
  acc.mult(.1);

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