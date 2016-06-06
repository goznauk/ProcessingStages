public class ExampleStage extends Stage {
  
  @Override 
  public void init() {
    super.init();
    // do sth when setup()
  }
  
  @Override
  public void onDraw() {
    // do sth when draw()
    
    rect(50, 50, 50, 50);
    
    
  }
  
  @Override
  public void onMousePressed() {
    // do sth when mousePressed()
  }
}
  