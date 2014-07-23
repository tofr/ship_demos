class Ball {

  final static float DEFAULT_SIZE = 23;

  float bDiam;
  float bx;
  float by;
  float movex;
  float movey;
  color bColor;
  int state;


  //default constructor
  Ball() {
    bDiam = DEFAULT_SIZE;
    bx = random(width - bDiam) + bDiam/2;
    by = random(height - bDiam) + bDiam/2;
    movex = random(10) - 5;
    movey = random(10) - 5;
    bColor = color(random(256), random(256), random(256));
  }

  void display() {
      fill( bColor );
      ellipse( bx, by, bDiam, bDiam );
  }

  void move() {
    bx+= movex;
    by+= movey;

    if (bx <= 0 + bDiam/2 || bx >= width - bDiam/2) {
      movex*= -1;
    }
    if (by <= 0 + bDiam/2 || by >= height - bDiam/2) {
      movey *= -1;
    }
  }

  //simple collision detection
  boolean isTouching( Ball other ) {
    return dist(bx, by, other.bx, other.by) <= bDiam;
  }

}//end class Ball

