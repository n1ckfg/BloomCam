ArrayList<Stroke> strokes = new ArrayList<Stroke>();
Cam cam;
PVector camOrigPos;

void setup() {
  fullScreen(P3D);
  noCursor();
  background(0);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  cam = new Cam();
  bloomSetup();
  //setupSyphon();
  setupShaders();
}

void draw() {
  if (mousePressed) {
    if (strokes.size() < 1) strokes.add(new Stroke());
    Stroke s = strokes.get(strokes.size()-1);
    if (s.points.size() < 1 || dist(mouseX, mouseY, pmouseX, pmouseY) > 2) {
      s.points.add(new PVector(cam.mouse.x, cam.mouse.y, cam.mouse.z));
    }
  }
 
  tex.beginDraw();
  cam.run();
  
  tex.background(0);
  for (int i=0; i<strokes.size(); i++) {
    strokes.get(i).run();
  }
  tex.filter(shader);
  tex.endDraw();  
  updateShaders();
  
  bloomDraw();
  //updateSyphon();
  
  surface.setTitle(""+frameRate);
}
