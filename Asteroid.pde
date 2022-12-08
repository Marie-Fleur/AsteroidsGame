Spaceship spaceship;
Star[] stars;
ArrayList <Bullet> bullets;
ArrayList<Asteroid> asteroids;
void setup()
{
  size(700, 700);
  background(0);
  spaceship = new Spaceship();
  bullets = new ArrayList <Bullet>();
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
      (float)spaceship.getCenterX(),
      (float)spaceship.getCenterY()) < 20) {
      asteroids.remove(i);
    } else {
      asteroids.get(i).show();
      asteroids.get(i).move();
    }
  }
  spaceship.show();
  spaceship.move();
  for (int i = 0; i < bullets.size(); i++) {
    bullets.get(i).show();
    bullets.get(i).move();
  }
  for (int i = 0; i < bullets.size(); i++) {
    for (int j = 0; j < asteroids.size(); j++) {
      if (dist((float)bullets.get(i).getCenterX(),
        (float)bullets.get(i).getCenterY(),
        (float)asteroids.get(j).getCenterX(),
        (float)asteroids.get(j).getCenterY()) <= 20) {
        bullets.remove(i);
        asteroids.remove(j);
        break;
      }
    }
  }
  for (int i = 0; i < bullets.size(); i++) {
    if (bullets.get(i).getCenterY() >= 700 ||
      bullets.get(i).getCenterY() <= 0 ||
      bullets.get(i).getCenterX() >= 700 ||
      bullets.get(i).getCenterX() <= 0) {
      bullets.remove(i);
    }
  }

  for (int i = 0; i < asteroids.size(); i++) {
    if (asteroids.get(i).getCenterY() >= 700 ) {
      asteroids.remove(i);
      asteroids.add(new Asteroid(0, Math.random()*701));
    } else if (asteroids.get(i).getCenterX() <= 0) {
      asteroids.remove(i);
      asteroids.add(new Asteroid(Math.random()*701, 0));
    } else if (asteroids.get(i).getCenterY() <= 0) {
      asteroids.remove(i);
      asteroids.add(new Asteroid(Math.random()*701, 700));
    } else if (asteroids.get(i).getCenterX() >= 700) {
      asteroids.remove(i);
      asteroids.add(new Asteroid(0, Math.random()*701));
    }
  }
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
  } else if (key == 's') {
    bullets.add(new Bullet(spaceship));
  }
}
