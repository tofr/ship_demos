class Ball {

  final static float GROWTH_FACTOR = 1;

  int bDiam;
  float bx;
  float by;
  float movex;
  float movey;
  color bColor;
  boolean isGrowing = false;

  //default constructor
  Ball() {
    bDiam = 23;
    bx = random(width - bDiam) + bDiam/2;
    by = random(height - bDiam) + bDiam/2;
    movex = random(10) - 5;
    movey = random(10) - 5;
    bColor = color(random(256), random(256), random(256));
  }

  // overloaded constructor
  // x, y, x-velocity, y-velocity, initial size
  Ball( float x, float y, float mx, float my, int bs) {
    bx = x;
    by = y;
    movex = mx;
    movey = my;
    bDiam = bs;
    bColor = color( random(255), random(255), random(255) );
  }

  // overloaded constructor
  // x, y, x-velocity, y-velocity, initial size, color
  Ball( float x, float y, float mx, float my, int bs, color c ) {
    bx = x;
    by = y;
    movex = mx;
    movey = my;
    bDiam = bs;
    bColor = c;
  }


  void display() {
    fill(bColor);
    ellipse(bx, by, bDiam, bDiam);
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

  //grow() increases size of this ball by GROWTH_FACTOR
  void grow() {
    bDiam += GROWTH_FACTOR;
  }

  //shrink() decreases size of this ball by GROWTH_FACTOR
  void shrink() {
    bDiam -= GROWTH_FACTOR;
  }
}//end class Ball

