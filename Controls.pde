float deltaOrig = 1;
float deltaFast = 10;
float delta = deltaOrig;

boolean keyW = false;
boolean keyA = false;
boolean keyS = false;
boolean keyD = false;
boolean keyQ = false;
boolean keyE = false;
boolean keySpace = false;

void keyPressed() {
  checkKeyChar(key, true);
  
  if (key == 'o') {
    Latk latk = new Latk();
    for (int i=0; i<strokes.size(); i++) {
      Stroke s = strokes.get(i);
      LatkStroke st = new LatkStroke(s.points, s.col);
      for (int j=0; j<st.points.size(); j++) {
        PVector pt = st.points.get(j);
        pt = new PVector(pt.z, -pt.y, pt.x).mult(0.1);
        st.points.set(j, pt);
      }
      latk.layers.get(0).frames.get(0).strokes.add(st);
    }
    latk.write();
  }
}

void keyReleased() {
  checkKeyChar(key, false);
}

boolean checkKeyChar(char k, boolean b) {
  switch (k) {
    case 'w':
      return keyW = b;
    case 'a':
      return keyA = b;
    case 's':
      return keyS = b;      
    case 'd':
      return keyD = b;
    case 'q':
      return keyQ = b;
    case 'e':
      return keyE = b;
    case ' ':
      return keySpace = b;
    default:
      return b;
  }
}

/*
boolean checkKeyCode(int k, boolean b) {
  switch (k) {
    case SHIFT:
      return keyShift = b;
    default:
      return b;
  }
}
*/

void updateControls() {
  if (keyW) cam.move(0,0,-delta);
  if (keyS) cam.move(0,0,delta);
  if (keyA) cam.move(-delta,0,0);
  if (keyD) cam.move(delta,0,0);
  if (keyQ) cam.move(0,delta,0);
  if (keyE) cam.move(0,-delta,0);
  
  if (keySpace) {
    cam.reset();
    strokes = new ArrayList<Stroke>();
    //keysOff();  
  }
}

void keysOff() {
  keyW = false;
  keyA = false;
  keyS = false;
  keyD = false;
  keyQ = false;
  keyE = false;
  keySpace = false;
}
