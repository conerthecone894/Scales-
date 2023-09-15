int b = 175;

boolean spacing = true;
boolean up = true;

void setup(){
  size(512, 512);
  fill(0, 0, 0);
}

void draw() {

  if (b > 175 && up == true)
    up = false;
  if (b < 50 && up == false)
    up = true;  
  
  if (up == true){
    b += 1;
  } else {
      b -= 0.5;
    } 
  //controls brightness
  
  for (int i = 512; i > 0; i -= 15){
      int o;
      if (spacing == true) {
        o = 0;
        } else {
            o = -15;
          }
      spacing ^= true;
     for (int p = o; p < 512; p += 30){
        scale(p, i, b);
    }
  }
  // draws scales
}

void scale(int x, int y, int f){
  float variation = random(13, 15.1);  
  fill(f, random(1.5, 2.1)*f, 255);
  beginShape();

    vertex(x+variation, y);
    vertex(x, y+(1.5*variation));
    vertex(x-variation, y);
   endShape();
   beginShape();
    curveVertex(x-variation, y);
    curveVertex(x-variation, y);
    curveVertex(x, y-variation);
    curveVertex(x+variation, y);
    curveVertex(x+variation, y);
  endShape();
}
