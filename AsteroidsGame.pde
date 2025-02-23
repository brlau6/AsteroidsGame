//your variable declarations here
Star[] hi = new Star[300];
Spaceship falcon = new Spaceship();
//Spaceship[] fleet = new Spaceship[20];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
//Bullet shot = new Bullet(falcon);//single bullet
ArrayList <Bullet> ammo = new ArrayList <Bullet>();

public void setup() 
{
  size(600,600);
  background(0);
  for(int i = 0; i < hi.length; i++)
    hi[i] = new Star();
  //for(int i = 0; i < fleet.length; i++)
  //  fleet[i] = new Spaceship();
  for(int i = 0; i < 20; i++)// 20 = # of Asteroids
    rocks.add(new Asteroid());
}
public void draw() 
{
  background(0);
  noStroke();
  if(rocks.size() > 0){ //show stars while game isn't won
    for(int i = 0; i < hi.length; i++)
      hi[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){//Asteroid movement and collision check w/ ship
    rocks.get(i).move();
    rocks.get(i).show();
    if((dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)falcon.getX(), (float)falcon.getY())) <= 20)
      rocks.remove(i);
  }
  for(int i = 0; i < ammo.size(); i++){//Bullets
    ammo.get(i).show();
    ammo.get(i).move();
    if(ammo.get(i).getX() < 0 || ammo.get(i).getX() > 600 || ammo.get(i).getY() < 0 || ammo.get(i).getY() > 600){
      ammo.remove(i);
    }
  }
  for(int i = 0; i < ammo.size(); i++){//Bullet asteroid collision
    for(int j = 0; j < rocks.size(); j++){
      if(dist((float)ammo.get(i).getX(), (float)ammo.get(i).getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY()) < 10){
        ammo.remove(i);
        rocks.remove(j);
        break;
      }
    }
  }
  //ship
  falcon.move();
  falcon.show();
  //bullet
  //shot.move();
  //shot.show();
  //for(int i = 0; i < fleet.length; i++){
  //  fleet[i].move();
  //  fleet[i].show();
  //}
  if(rocks.size() == 0){//win screen
    fill(255);
    textSize(50);
    text("YOU WIN!",190,295);
  }
}//end draw()

public void keyPressed(){
  if(key == 'h' || key == 'H'){ //hyperspace
    falcon.setX((Math.random()*500));
    falcon.setY((Math.random()*500));
    falcon.setXspeed(0);
    falcon.setYspeed(0);
    falcon.setDirection(Math.random()*360);
  }  
  //  for(int i = 0; i < fleet.length; i++){
  //    fleet[i].setX((Math.random()*500));
  //    fleet[i].setY((Math.random()*500));
  //    fleet[i].setXspeed(0);
  //    fleet[i].setYspeed(0);
  //    fleet[i].setDirection(Math.random()*360);
  //  }
  //}

  if(key == 'a' || key == 'A'){
    falcon.turn(-5);
    //for(int i = 0; i < fleet.length; i++)
    //  fleet[i].turn(-5);
  }
  if(key == 'd' || key == 'D'){
    falcon.turn(5);
    //for(int i = 0; i < fleet.length; i++)
    //  fleet[i].turn(5);
  }
  if(key == 'w' || key == 'W'){
    falcon.accelerate(1);
    //for(int i = 0; i < fleet.length; i++)
    //  fleet[i].accelerate(1);
  }
  if(key == 's' || key == 'S'){
    falcon.accelerate(-1);
    //for(int i = 0; i < fleet.length; i++)
    //  fleet[i].accelerate(-1);
  }
  if(key == ' '){
    ammo.add(new Bullet(falcon));
  }
}

public void mousePressed(){
  for(int i = 0; i < hi.length; i++){// set stars to random positions on click
    hi[i].setX((int)(Math.random()*600));
    hi[i].setY((int)(Math.random()*600));
  }
}
