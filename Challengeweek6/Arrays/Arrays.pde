//Draws random quotes updated 4 times per second
PFont pFont;  //Check on processing page for how to use PFont
String[] myQuotes = new String[10];
String quoteToDraw;

void setup(){
  size(400,600); //Use fullscreen when finished
  frameRate(4);  //Run this slow.....
  addQuotes();
  pFont = createFont ("Serif", 32);
  textFont(pFont);
}

void draw(){
  background (0);
    quoteToDraw = getQuote();
    text(quoteToDraw, 10, 50);
    //Print the qoute on the screen using PFont.
}

//Methods

/**Adds 10 quotes to the varable myQuotes*/
void addQuotes(){
  myQuotes[0] = "sleeping is nice";
  myQuotes[1] = "it is raining";
  myQuotes[2] = "i live to eat";
  myQuotes[3] = "not eat to live";
  myQuotes[5] = "blue is the warmest color";
  myQuotes[6] = "the backpack is real";
  myQuotes[7] = "breaking eggs";
  myQuotes[8] = "it is mysigt";
  myQuotes[9] = "yo brah";
  
}


/**Selects a random Qoute from myQuotes.*/
String getQuote(){
  
  //Write code to select a random quote
  return myQuotes [(int)random(myQuotes.length)];
}