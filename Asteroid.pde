class Asteroid extends Floater{
  protected double turnSpeed;
  Asteroid(){
    corners = 6;    
    xCorners = new int[]{(int)(Math.random()*3)-11, (int)(Math.random()*3)+7, (int)(Math.random()*3)+13,  (int)(Math.random()*3)+6, (int)(Math.random()*3)-11, (int)(Math.random()*10)-20};
    yCorners = new int[]{(int)(Math.random()*3)-8, (int)(Math.random()*3)-8,  (int)(Math.random()*3)-1, (int)(Math.random()*3)+10, (int)(Math.random()*3)+8, (int)(Math.random()*3)-1};
    //xCorners = new int[]{-11, 7, 13,  6, -11, -5};
    //yCorners = new int[]{-8, -8,  0, 10,   8,  0};
    myColor = color(150);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*5-1;
    myYspeed = Math.random()*5-1;
    myPointDirection = 0;//degrees
    turnSpeed = Math.random()*5-2;
  }
  public void move (){      
    turn(turnSpeed);//rotate Asteroid
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
