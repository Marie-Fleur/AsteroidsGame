class Asteroid extends Floater {
  private double speedOfRotation;
  public Asteroid(double centerOfX, double centerOfY) {
    corners = 8;
    xCorners = new int[] {-25, -15, 15, 25, 25, 15, -15, -25};
    yCorners = new int[] {10, 25, 25, 10, -10, -25, -25, -10};
    myColor = ((int)(Math.random()*213)+50);
    myCenterX = centerOfX;
    myCenterY = centerOfY; //holds center coordinates
    myXspeed = (int)(Math.random()*5-2);
    if (myXspeed == 0) {
      myXspeed++;
    }
    myYspeed = (int)(Math.random()*5-2); //holds the speed of travel in the x and y directions
    if (myYspeed == 0) {
      myYspeed++;
    }
    myPointDirection = Math.random()*360;
    speedOfRotation = Math.random()*2+0.1;;
  }
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
    turn(speedOfRotation);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public void setXSpeed(double xSpeed) {
    myXspeed = xSpeed;
  }
}
