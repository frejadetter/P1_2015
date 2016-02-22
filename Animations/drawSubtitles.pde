void drawSubtitles() {
  int lineToShow = (second()/3) % 5;
  float textWidth = textWidth(mySubs[lineToShow]);

  println ("millis: " + millis());
  println ("linetoshow: " + lineToShow);
  println ("minute: " + minute());
  println ("hour: " + hour());
  println ("text " + mySubs[lineToShow]);

  rectMode(CENTER);
  noStroke();
  fill(125, 125, 125, 120);
  rect(width/2, height-60, textWidth + 20, 75);
  float x = (width/2) - (textWidth/2);

  fill(255);
  text(mySubs[lineToShow], x, height-50);

  println("text bredd: " + textWidth);
}