/*
// MAC
import codeanticode.syphon.*;

SyphonServer server;

void settings() {
  size(1280, 720, P3D);
  PJOGL.profile = 1;
}

void syphonSetup() {
  server = new SyphonServer(this, "Processing Syphon");
}

void syphonDraw() {
  server.sendImage(tex);
}
*/

// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

// WIN
import spout.*;

Spout server;

void syphonSetup() {
  server = new Spout(this);
  server.createSender("Processing Spout");
}

void syphonDraw() {
  server.sendTexture();
}