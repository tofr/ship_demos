//Chain Reaction

int NUM_BALLS = 30; 

//global array for Balls
Ball[] balls;

//setup fxn runs once, at program startup
void setup() {
  size( 600, 600 );
  background(0);
  noStroke();
  initBallsArray();
}

void draw() {
  background(0);

  for ( int i=0; i < balls.length; i++ ) {
    for ( int j=i+1; j < balls.length; j++ ) {
      //print("*** testing for collision");    
      //println(" b/t Ball #" + i + " and Ball #" + j + "... ***");    
      if ( balls[i].isTouching( balls[j] ) ) {
        balls[i].movex = 0;
        balls[i].movey = 0;
        balls[j].movex = 0;
        balls[j].movey = 0;
      }
    }
  }

  for ( int i = 0; i < balls.length; i++ ) {
    println("*** moving Ball #" + i + "... ***");    
    balls[i].move();
    balls[i].display();
  }
}//end draw

void initBallsArray() {
  println("*** Declaring balls array ... ***");
  balls = new Ball[NUM_BALLS];
  for ( int i=0; i < balls.length; i++ ) {
    println("*** instantiating Ball #" + i + "... ***");
    balls[i] = new Ball();
  }
}

