class Bullet extends Floater{
  public Bullet(Spaceship falcon){
    myCenterX = falcon.getX();
    myCenterY = falcon.getY();
    myXspeed = falcon.getXspeed();
    myYspeed = falcon.getYspeed();
    myPointDirection = falcon.getPointDirection();
    myColor = color(255,0,0);
    accelerate(6.0);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
