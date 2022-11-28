Spaceship spaceship = new Spaceship();
Star[] stars = new Star[500];
public void setup() 
{
  size(700,700);
  background(0);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  spaceship.show();
  spaceship.move();
}
public void keyPressed() {
  if (key == 'a') {
    spaceship.turn(-10);
  }
  else if (key == 'd') {
    spaceship.turn(10);
  }
  else if (key == 'f') {
    spaceship.accelerate(3.0);
  }
  else if (key == 'w') {
   spaceship.setXspeed(Math.random()*180, Math.random()*701, Math.random()*701);
  }
  else {
  }
}
