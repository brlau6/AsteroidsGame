//your variable declarations here
Star[] hi = new Star[300];
Spaceship falcon = new Spaceship();

public void setup() 
{
  size(500,500);
  background(0);
  noStroke();
  for(int i = 0; i < hi.length; i++)
    hi[i] = new Star();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < hi.length; i++)
    hi[i].show();
  falcon.move();
  falcon.show();
}

public void keyPressed(){
  if(key == 'h' || key == 'H'){ //hyperspace
    falcon.setX((Math.random()*500));
    falcon.setY((Math.random()*500));
    falcon.setXspeed(0);
    falcon.setYspeed(0);
    falcon.setDirection(Math.random()*360);
  }
  if(key == 'a' || key == 'A')
    falcon.turn(-5);
  if(key == 'd' || key == 'D')
    falcon.turn(5);
  if(key == 'w' || key == 'W')
    falcon.accelerate(1); 
}

public void mousePressed(){
  for(int i = 0; i < hi.length; i++){
    hi[i].setX((int)(Math.random()*500));
    hi[i].setY((int)(Math.random()*500));
    //hi[i].setColor((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
}
