ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);

  for (int j = particles.size() -1; j > 0; j--){
    Particle part = particles.get(j);
    part.update();
    part.display();

  if (part.position.y > height + 5) {
    particles.remove(j);
  }
}
  
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY, random(0, 255), random(0, 255), random(0, 255)));
  }
}
