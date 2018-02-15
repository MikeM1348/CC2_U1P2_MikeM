float rot = 0;
float boxrot = 0;
PImage texture;
PShape cube;
import processing.sound.*;

SoundFile file;

void setup() 
{
  size(600, 600, P3D);
  
  texture = loadImage("beacon.png");
  cube = createShape(BOX,100);
  cube.setTexture(texture);
  cube.setStroke(color(255,255,255,0));
  file = new SoundFile(this,"A World Without Danger.mp3");
  file.play();
  file.amp(0.5);
}

void draw() 
{
  background(0);
  lights();
  pushMatrix();
  translate(300, 300, 10);
  rotateX(boxrot);
  rotateY(boxrot);
  rotateZ(boxrot);
  noStroke();
  fill(255,165,0);
  shape(cube);
  popMatrix();
  boxrot+=PI/60;
  
  pushMatrix();
  translate(300, 300, 0);
  rotateX(0);
  rotateY(rot);
  noFill();
  stroke(255,0,255,80);
  sphere(200);
  popMatrix();
  rot-=PI/150;
}