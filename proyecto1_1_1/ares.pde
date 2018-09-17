void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
void ares(){
       pushMatrix();
        translate(width*0.2, height*0.5);
       fill(22,160,133);
       polygon(0, 0, 82, 5);  // pentagono tomado de prossesing.org
       popMatrix();
}
