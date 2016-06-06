Stage stage;

// Set Window Size here
int windowX = 800, windowY = 450;
int stageNum = 0;
ArrayList<Stage> stages;

void setup() {
  surface.setSize(windowX, windowY);
  stages = new ArrayList<Stage>();
  
  // Add new Stages
  stages.add(new ButtonExampleStage());
  stages.add(new TimerExampleStage());
  stages.add(new BasicExampleStage());

  // Start first stage
  stage = stages.get(0);
  stage.init();
  
  ellipseMode(CENTER);
}

void draw() {
  if (stage.isCompleted()) {
    stageNum++;
    stage = stages.get(stageNum % stages.size());
    stage.init();
  }
  stage.onDraw();
}

void mousePressed() {
  stage.onMousePressed();
}