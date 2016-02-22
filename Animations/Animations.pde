//Background
PImage backGroundImage;
String[] mySubs;
PFont font;
PVector[] rainDrops;

boolean rollThunder = false; 
PImage[] myThunderImages;

void setup() {
  //size(1280, 768);
  fullScreen();
  font = loadFont("Avenir-Heavy-48.vlw");
  textFont(font);
  backGroundImage = loadImage("roy.jpg");
  mySubs = loadStrings("bladerunner.txt");
  float xPos = random(0, width);


  rainDrops = new PVector[500]; 
  for (int i = 0; i < rainDrops.length; i ++) {
    rainDrops[i] = new PVector();
    rainDrops[i].x = random(0, width);
    rainDrops[i].y = random(0, height);
  }

  myThunderImages = new PImage[3];
  myThunderImages[0] = loadImage("thunder1.png");
  myThunderImages[1] = loadImage("thunder2.png");
  myThunderImages[2] = loadImage("thunder3.png");
  
}

void draw() {
  image(backGroundImage, 0, 0, width, height);
  thunder();
  drawSubtitles();
  rain();
}