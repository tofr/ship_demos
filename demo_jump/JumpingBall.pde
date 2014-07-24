/*~~~~~~~~~~~~~~~~~~~
 class JumpingBall --- for use with jumping demo
 CSTUY SHIP 2014, port 
 ~~~~~~~~~~~~~~~~~~~*/

class JumpingBall {

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //constant declarations --- modify these to suit your preference
  final static float DEFAULT_SIZE = 23;
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //instance variables, aka attributes, aka fields, aka properties
  //each instance of class JumpingBall may take on different values
  float bDiam;
  float bx;
  float by;
  float movex;
  float movey;
  color bColor;
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  //default constructor
  JumpingBall() {
    bDiam = DEFAULT_SIZE;
    bx = random(width - bDiam) + bDiam/2;
    by = random(height - bDiam) + bDiam/2;
    movex = random(10) - 5;
    movey = random(10) - 5;
    bColor = color(random(256), random(256), random(256));
  }

  // overloaded constructor 1
  // x, y, x-velocity, y-velocity, initial size
  JumpingBall( float x, float y, float mx, float my, int bs) {
    bx = x;
    by = y;
    movex = mx;
    movey = my;
    bDiam = bs;
    bColor = color( random(255), random(255), random(255) );
  }

  // overloaded constructor 2
  // x, y, x-velocity, y-velocity, initial size, color
  JumpingBall( float x, float y, float mx, float my, int bs, color c ) {
    bx = x;
    by = y;
    movex = mx;
    movey = my;
    bDiam = bs;
    bColor = c;
  }

  //draw this JumpingBall on the screen (if alive)
  void display() {
    fill( bColor );
    ellipse( bx, by, bDiam, bDiam );
  }

  //determine whether this JumpingBall is touching another,
  //potentiall of different diameter
  boolean isTouching( JumpingBall other ) {
    float myRad = bDiam / 2;
    float otherRad = other.bDiam / 2;
    float threshold = myRad + otherRad;
    return dist(bx, by, other.bx, other.by) <= threshold;
  }

  //update this JumpingBall's location according to its velocity
  void move() {
    bx += movex;
    by += movey;
  }

  //set this JumpingBall's upward velocity to input val
  void jump( float initVy ) {
    movey = -initVy;
  }

  void faceLeft() {
    movex = -1;
  }

  void faceRight() {
    movex = 1;
  }

  //decrease this JumpingBall's upward velocity by input val
  void accelerateY( float dVy ) {
    movey += dVy;
  }
}//end class JumpingBall

