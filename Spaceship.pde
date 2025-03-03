class Spaceship extends Floater
{
  Spaceship() {
    corners = 4;  //the number of corners, a triangular floater has 3
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = (255);
    myCenterX = 350.0;
    myCenterY = 350.0; //holds center coordinates
    myXspeed = 0.0;
    myYspeed = 0.0; //holds the speed of travel in the x and y directions
    myPointDirection = 0.0;
  }
   public void setXspeed(double n, double j, double e) {
    myPointDirection = n;
    myCenterX = j;
    myCenterY = e;
    myXspeed = 0.0;
    myYspeed = 0.0;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public double getSpeedX() {
    return myXspeed;
  }
  public double getSpeedY() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
