Ball tester;

void setup() {

  size(600, 600);
  background(0);

  tester = new Ball( width/2, height/2, 0, 0, 20, color(255, 0, 0) );
}//end setup


void draw() {
  background(0);

  tester.display();

  if ( tester.isGrowing ) {
    tester.grow();
  } else {
    tester.shrink();
  }
  
}//end draw()

void mouseClicked() {
   tester.isGrowing = !tester.isGrowing;
}
