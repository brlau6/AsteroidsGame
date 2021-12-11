class Spaceship extends Floater  
{   
  Spaceship(){
    corners = 24;
    xCorners = new int[]{-11,-11,-5,-3,-3,-5,-11,-11,-1,-1,-3,0,1,3,5,7,7,5,3,1,0,-3,-1,-1};
    yCorners = new int[]{4,3,3,1,-1,-3,-3,-4,-4,-3,-3,-1,-1,-3,-3,-1,1,3,3,1,1,3,3,4};
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
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
