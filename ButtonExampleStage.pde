public class ButtonExampleStage extends Stage {
  
  // Declare Button
  Button button;

  @Override 
  public void init() {
    super.init();

    // do sth when setup()


    // button = new Button(posX, posY, sizeX, sizeY, text)
    button = new Button(width/2, height/2, 400, 160, "Button");
    
    // change default attributes
    // textSize, textColor, textHighLightedColor, baseColor, highLightedColor, strokeColor
    button.textColor = color(200);
    button.textHighLightedColor = color(180);
  }
  
  @Override
  public void onDraw() {
    // do sth when draw()



    // draw button on screen
    button.onDraw();  
    
  }
  
  @Override
  public void onMousePressed() {
    if(button.isMouseOn()) {
      // do sth when button pressed
      
      
      // To move on next stage, change isCompleted to true
      isCompleted = true;
    }
  }
}
  