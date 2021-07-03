class Player {
  PVector pos; 
  PVector acc; 
  PVector vel;  
  float r=40; 
  
  Player() {
    pos = new PVector(50, (height-200));
    vel = new PVector(0, 20);
    acc = new PVector();
  }

  void applyForce(PVector force) {
    acc.add(force); 
  }
  
  void update() {
    applyForce(gravity); 
    pos.add(vel); 
    if (pos.y >= height-170) {
      pos.y = height-170;
      vel.mult(0);
    }
    vel.add(acc); 
    vel.limit(4); 
    acc.mult(0);
  } 
  
  void show() {
    fill(255, 0, 34);
    stroke(0, 0, 0);
    strokeWeight(2);
    imageMode(CORNER); 
    image(pl, pos.x, pos.y, r*2, r*2);
  }
}
