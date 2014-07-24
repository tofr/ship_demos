/*~~~~~~~~~~~~~~~~~~~
 demo for making a shape jump/bounce
 uses class JumpingBall, a Ball derivative with jump(), etc 
 CSTUY SHIP 2014, port
 ~~~~~~~~~~~~~~~~~~~*/

//~~~~~~global vars~~~~~~
//any moving object subject to same vertical deceleration
final float GRAVITY = .1;
//arbritrarily chosen "sea level"
float ground = 0;
JumpingBall b;

void setup() {
  size(400, 400);
  ground = height - 50;
  b = new JumpingBall( width/2, ground, 0, 0, 25);
}

void draw() {
  background(0);
  b.display();
  b.move();
  if ( b.by < ground )
    b.accelerateY( GRAVITY );
  else 
    b.movey = 0;
  fill(255);
  //display help text
  text( "Controls:", 20, 20 );
  text( "move left: <-   move right: ->    jump: ^", 20, 40 );
}//end draw()

//keyPressed() runs whenever a key is pressed
void keyPressed() {
  //CODED is reserved keyword denoting non-alpha keys
  if ( key==CODED ) {  
    if ( keyCode==UP ) 
      b.jump(5); //lift-off w/ specified initial velocity
    if ( keyCode==LEFT ) 
      b.faceLeft();
    else if ( keyCode==RIGHT ) 
      b.faceRight();
  }
}//end keyPressed()

