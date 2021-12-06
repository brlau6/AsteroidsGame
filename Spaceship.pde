class Spaceship extends Floater  
{   
  Spaceship(){
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8,  0,   8,  0};
    myColor = color(255);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
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
  public void setColor(int r, int g, int b){
    myColor = color(r,g,b);
  }
  //getters
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
