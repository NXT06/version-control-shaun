ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = particles.size() -1; i > 0; i--){
    Particle part = particles.get(i);
    part.update();
    part.display();

  if (part.position.y > height + 5) {
    particles.remove(i);
  }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY, random(0, 255), random(0, 255), random(0, 255)));
  }
}
