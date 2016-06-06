public abstract class Stage {
  
  protected boolean isCompleted = false;
  
  public int backgroundColor = 255;
  
  public void init() { }
  
  public void clearWindow() {
    background(backgroundColor);
  }
  
  public void onDraw() { }
  public void onMousePressed() { }
   
  public boolean isCompleted() {
    return isCompleted;
  }
}