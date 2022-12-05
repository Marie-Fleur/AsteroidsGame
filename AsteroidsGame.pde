Spaceship spaceship;
Star[] stars;
ArrayList<Asteroid> asteroids;
void setup()
{
  size(700, 700);
  background(0);
  spaceship = new Spaceship();
  stars = new Star[500];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  asteroids = new ArrayList<Asteroid>();
  for (int i = 0; i < 10; i++) {
    Asteroid nAsteroid = new Asteroid(Math.random()*701, Math.random()*701);
    asteroids.add(i, nAsteroid);
  }
}
void draw()
{
  background(0);
  // stars
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  // asteroids
  for (int i = 0; i < asteroids.size(); i++) {
    if (dist((float)asteroids.get(i).getCenterX(),
      (float)asteroids.get(i).getCenterY(),
      (float)spaceship.getMyCenterX(), (float)spaceship.getMyCenterY()) < 20) {
        asteroids.remove(i);
    } else {
      asteroids.get(i).show();
      asteroids.get(i).move();
    }
  }
  spaceship.show();
  spaceship.move();
}
void keyPressed() {
  if (key == 'a') {
    spaceship.turn(-10);
  } else if (key == 'd') {
    spaceship.turn(10);
  } else if (key == 'f') {
    spaceship.accelerate(3.0);
  } else if (key == 'w') {
    spaceship.setXspeed(Math.random()*180, Math.random()*701, Math.random()*701);
  }
}
