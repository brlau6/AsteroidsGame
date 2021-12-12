class Bullet extends Floater{
  public Bullet(Spaceship falcon){
    myCenterX = falcon.getX();
    myCenterY = falcon.getY();
    myXspeed = falcon.getXspeed();
    myYspeed = falcon.getYspeed();
    myPointDirection = falcon.getPointDirection();
    myColor = color(0,255,0);
    accelerate(6.0);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 4, 4);
  }
  
  public void move(){
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }//end move()
  
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
