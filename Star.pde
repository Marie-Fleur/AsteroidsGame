class Star //note that this class does NOT extend Floater
{
  private int myColor;
  private int xPosition, yPosition;
  public Star() {
    myColor = ((int)(Math.random()*256));
    xPosition = (int)(Math.random()*700);
    yPosition = (int)(Math.random()*700);
  }
  public void show() {
    fill(myColor);
    ellipse(xPosition,yPosition,5,5);
  }
}
