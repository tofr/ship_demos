//global vars
float robertX1 = 0;
float robertY1 = 0;
float antigoneX1 = 30;
float antigoneY1 = 40;


void setup() {
  size(300,300); 
  //text( myDistance(robertX1,robertY1,antigoneX1,antigoneY1), width/2, height/2 );
  //text() call above is equivalent to the one below:
  text( dist(robertX1,robertY1,antigoneX1,antigoneY1), width/2, height/2 );
}

//myDistance takes coords for 2 pts, returns distance between them
float myDistance( float x1, float y1, float x2, float y2 ) {  
  return sqrt( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) );
}

