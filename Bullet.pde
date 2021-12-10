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
  
  public void move(){
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
    for(int i = 0; i < ammo.size(); i++){//remove bullets if they exit screen  
      if(ammo.get(i).getX() < 0 || ammo.get(i).getX() > 500 || ammo.get(i).getY() < 0 || ammo.get(i).getY() > 500){
        ammo.remove(i);
      }
    }
  }//end move()
  
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
