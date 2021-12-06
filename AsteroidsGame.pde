//your variable declarations here
Star[] hi = new Star[300];
Spaceship falcon = new Spaceship();
//Spaceship[] fleet = new Spaceship[20];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup() 
{
  size(500,500);
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
  noFill();
  strokeWeight(2);
  if(rocks.size() > 0){ //show stars while game isn't won
    for(int i = 0; i < hi.length; i++)
      hi[i].show();
  }
  falcon.move();
  falcon.show();
  //for(int i = 0; i < fleet.length; i++){
  //  fleet[i].move();
  //  fleet[i].show();
  //}
  for(int i = 0; i < rocks.size(); i++){//Asteroid movement and collision check
    rocks.get(i).move();
    rocks.get(i).show();
    if((dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)falcon.getX(), (float)falcon.getY())) <= 20)
      rocks.remove(i);
  }
  if(rocks.size() == 0){//win screen
    fill(255);
    textSize(50);
    text("YOU WIN!",125,250);
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
/*    
    for(int i = 0; i < fleet.length; i++){
      fleet[i].setX((Math.random()*500));
      fleet[i].setY((Math.random()*500));
      fleet[i].setXspeed(0);
      fleet[i].setYspeed(0);
      fleet[i].setDirection(Math.random()*360);
    }
  }
*/
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
}

public void mousePressed(){
  for(int i = 0; i < hi.length; i++){// set stars to random positions on click
    hi[i].setX((int)(Math.random()*500));
    hi[i].setY((int)(Math.random()*500));
  }
}
