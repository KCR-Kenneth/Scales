void setup() {
  size(1000,1000,P3D);
}

void draw() {
  background(0,0,0);
  translate(500,500);
  rotateX(-(mouseY-500)*PI*1/1100);
  rotateY((mouseX-500)*PI*1/1100);
  //scale(0,0);
  
  boolean shift = false;
  int s = 0;
  for (int y = -750; y <= 750; y += 100) {
    if (shift) {
      s = 0;
      shift = false;
    } else {
      s = 50;
      shift = true;
    }
    for (int x = -700; x <= 750; x += 100) {
      scale(x+s,y);
    }
    
  }
}

void scale(int x, int y) {
  fill(0,100,200);
  beginShape();
  vertex(x,y+100,40);
  vertex(x+50,y,40);
  vertex(x,y,0);
  vertex(x-50,y,40);
  vertex(x,y+100,40);
  vertex(x,y+100,40);
  endShape();
  beginShape();
  vertex(x,y-100,40);
  vertex(x+50,y,40);
  vertex(x,y,0);
  vertex(x-50,y,40);
  vertex(x,y-100,40);
  vertex(x,y-100,40);
  endShape();
  
  
  pushMatrix();
  noStroke();
  fill(250,250,150);
  translate(x,y,10);
  sphere(25);
  translate(0,-25);
  sphere(25);
  translate(0,50);
  sphere(25);
  translate(-25,-25);
  sphere(25);
  translate(50,0);
  sphere(25);
  
  fill(200,50,50);
  translate(-25,0,10);
  sphere(25);
  
  fill(0,100,255);
  translate(0,0,20);
  sphere(10);
  popMatrix();
  stroke(0,0,0);
}
