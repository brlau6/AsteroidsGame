class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  private float mySize;
  Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    mySize = (float)(Math.random()*5)+1;
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  };
  public void setX(int x){
    myX = x;
  }
  public void setY(int y){
    myY = y;
  }
}
