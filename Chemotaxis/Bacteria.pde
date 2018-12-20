class Bacteria {

  float x_pos;
  float y_pos;
  float bac_color;

  public Bacteria(float x_pos, float y_pos, float bacColor) {

    x_pos = x;
    y_pos = y;
    
    bac_color = bacColor;
  }

  void move() {

    if (x_pos > 400)
      x_pos = 100;

    if (y_pos > 400)
      y_pos = 100;

    x_pos = x_pos + ((float)(Math.random()*10)-5);
    y_pos = y_pos + ((float)(Math.random()*10)-5);
  }

  void show() {
    
    pushMatrix();
    translate(x_pos + 200, y_pos + 200);
    fill(bac_color);
    ellipse(0,0,15,15);
    popMatrix();
  }
}
