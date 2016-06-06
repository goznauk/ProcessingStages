public class TimerExampleStage extends Stage {
  
  long initialTime;
  
  int timeLimit = 2;
  
  @Override 
  public void init() {
    // set background color
    backgroundColor = 0;
    clearWindow();
    
    initialTime = millis();
    
    // do sth when setup()
    
    
  }
  
  @Override
  public void onDraw() {
    long duration = millis() - initialTime;
    
    if (duration > timeLimit * 1000) {
      isCompleted = true;
      return;
    }
    
    clearWindow();
    
    // do sth when draw()
    // e.g.
    rect(100, 50, 50, 50);
    text("Timer Example Stage", 200, 150);
    text("timer : " + duration/1000 + "." + duration%1000, 200, 300);
    
  }
  
  @Override
  public void onMousePressed() {
    // do sth when mousePressed()
  }
}
  