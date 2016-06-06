public class Button {
  // included in Constructor
  public int x, y, size_x, size_y;
  public String text; 
  
  // Set by default Value
  public int textSize;
  public color textColor, textHighLightedColor, baseColor, highLightedColor, strokeColor;
  
  public Button(int x, int y, int size_x, int size_y, String text) {
    this.x = x - size_x/2;
    this.y = y - size_y/2;
    this.size_x = size_x;
    this.size_y = size_y;
    this.text = text;
    this.textSize = size_y/2;
    this.textColor = color(255);
    this.textHighLightedColor = color(200);
    this.baseColor = color(150);
    this.highLightedColor = color(51);
    this.strokeColor = color(255);
  }
  
  public boolean isMouseOn() {
    if (mouseX >= x && mouseX <= x+size_x && mouseY >= y && mouseY <= y+size_y) {
      return true;
    } else {
      return false;
    }
  }
  
  public void onDraw() {
    textSize(textSize);

    if (isMouseOn()) {
      fill(highLightedColor);
      rect(x, y, size_x, size_y);
      fill(textHighLightedColor);
      text(text, (x + size_x/2 - textWidth(text)/2), (y + size_y - textSize/2));

    } else {
      fill(baseColor);
      rect(x, y, size_x, size_y);
      fill(textColor);
      text(text, (x + size_x/2 - textWidth(text)/2), (y + size_y - textSize/2));
    }
    stroke(strokeColor);
  }
}