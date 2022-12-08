class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getSpeedX();
    myYspeed = theShip.getSpeedY();
    myPointDirection = theShip.getPointDirection();
    myColor = color(255,255,0);
    accelerate(6.0);
  }
  public void show() {
    fill(myColor);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public void move() {
    super.move(); 
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
