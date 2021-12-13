class Asteroid extends Floater{
  protected double turnSpeed;
  public Asteroid(){
    corners = 6;    
    xCorners = new int[]{(int)(Math.random()*3)-11, (int)(Math.random()*3)+7, (int)(Math.random()*10)+8,  (int)(Math.random()*3)+6, (int)(Math.random()*3)-11, (int)(Math.random()*10)-20};
    yCorners = new int[]{(int)(Math.random()*3)-8, (int)(Math.random()*3)-8,  (int)(Math.random()*5)-1, (int)(Math.random()*3)+10, (int)(Math.random()*3)+8, (int)(Math.random()*3)-1};
    //xCorners = new int[]{-11, 7, 13,  6, -11, -5};
    //yCorners = new int[]{-8, -8,  0, 10,   8,  0};
    myColor = color((int)(Math.random()*100)+75);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = Math.random()*5-1;
    myYspeed = Math.random()*5-1;
    myPointDirection = 0;//degrees
    turnSpeed = Math.random()*5-2;
  }
  public void move (){      
    turn(turnSpeed);//rotate Asteroid
    super.move();
  }
  //getters
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
