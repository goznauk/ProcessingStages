public class BasicExampleStage extends Stage {
  
  @Override 
  public void init() {
    // set background color
    backgroundColor = 255;
    clearWindow();
    
    // do sth when setup()
  }
  
  @Override
  public void onDraw() {
    // do sth when draw()
    // e.g.
    rect(50, 50, 50, 50);
    text("Basic Example Stage", 150, 150);
    
    
  }
  
  @Override
  public void onMousePressed() {
    // do sth when mousePressed()
  }
}
  