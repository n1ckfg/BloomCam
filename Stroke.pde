class Stroke {

  ArrayList<PVector> points;

  Stroke() {
    points = new ArrayList<PVector>();
  }

  void update() {
    //
  }

  void draw() {
    tex.noFill();
    tex.beginShape();
    for (int i=0; i<points.size(); i++) {
      PVector p = points.get(i);
      float delta = dist(mouseX,mouseY,pmouseX,pmouseY)/2;
      tex.strokeWeight(delta);
      tex.stroke(255, 127, 0, 127);
      tex.vertex(p.x, p.y, p.z + random(-delta, delta));
    }
    tex.endShape();
    tex.beginShape();
    for (int i=0; i<points.size(); i++) {
      PVector p = points.get(i);
      tex.strokeWeight(10);
      tex.stroke(255, 0, 255, 200);
      tex.vertex(p.x, p.y, p.z + random(-10, 10));
    }
    tex.endShape();
  }

  void run() {
    update();
    draw();
  }
}