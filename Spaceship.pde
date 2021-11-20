class Spaceship extends Floater  
{   
  Spaceship(){
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8,  0,   8,  0};
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;//degrees
  }
  //setters
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double y){
    myCenterY = y;
  }
  public void setXspeed(double speed){
    myXspeed = speed;
  }
  public void setYspeed(double speed){
    myYspeed = speed;
  }
  public void setDirection(double direction){
    myPointDirection = direction;
  }
  //getters
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getDirection(){
    return myPointDirection;
  }
}
