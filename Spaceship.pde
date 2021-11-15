class Spaceship extends Floater  
{   
  Spaceship(){
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
  }
  
  public void show(){
  }
}
