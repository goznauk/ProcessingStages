public abstract class Stage {
  
  protected boolean isCompleted = false;
  
  public void init() {
    clear();
  }
  public void onDraw() { }
  public void onMousePressed() { }
   
  public boolean isCompleted() {
    return isCompleted;
  }
  
}