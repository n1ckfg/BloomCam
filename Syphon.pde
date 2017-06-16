/*
// MAC
import codeanticode.syphon.*;

SyphonServer server;

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