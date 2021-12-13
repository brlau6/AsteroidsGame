class Spaceship extends Floater  
{   
  Spaceship(){
    corners = 30;
    xCorners = new int[]{-22,-2,-2,-6,2,3,4,6,10,12,13,14,14,13,12,10,6,4,3,2,-6,-2,-2,-22,-22,-10,-6,-6,-10,-22};
    yCorners = new int[]{8,8,6,6,2,4,5,6,6,5,4,2,-2,-4,-5,-6,-6,-5,-4,-2,-6,-6,-8,-8,-7,-6,-2,2,6,7};
    //corners = 24; //1/2 SCALE MINI SHIP
    //xCorners = new int[]{-11,-11,-5,-3,-3,-5,-11,-11,-1,-1,-3,0,1,3,5,7,7,5,3,1,0,-3,-1,-1};
    //yCorners = new int[]{4,3,3,1,-1,-3,-3,-4,-4,-3,-3,-1,-1,-3,-3,-1,1,3,3,1,1,3,3,4};
    myColor = color(255);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = 0;
    myYspeed = 0;
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
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
