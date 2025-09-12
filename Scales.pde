void setup(){
  size(1200,600);
  noLoop();
}
void draw(){
  for (int y = 0; y <=600; y+=300) {
    for (int x = 0; x <=1200; x+=300) {
      smiley(x, y);
    }
  }
}

void smiley(int x, int y){
  //yellow head
  fill(255,255,0);
  ellipse(x,y,300,300);
  //smile
  arc(x,y,230,230,radians(30), radians(150));
  // right eye
  fill(0,0,0);
  ellipse(x+40,y-10,30,60);
  //left eye
  ellipse(x-40,y-10,30,60);
}

