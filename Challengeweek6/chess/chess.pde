//Draw a Chess board
color backgroundColor = color(0, 0, 200);

void setup() {
  size(800, 800); //Should work for any square window
  drawBoard();
}

void draw() {
  noStroke();
}

/**Draws a chessboard*/
void drawBoard() {
  println("Draws the game board");
  boolean black = false;
  int boxWidth = width / 8;
  int boxHeight = height / 8;

  for (int y = 0; y < 8; y++) {

    for (int x = 0; x < 8; x++) {

      if (black)
      {
        fill (0);
      } else {
        fill(255);
      }
    

    rect(x * boxWidth, y * boxHeight, boxWidth, boxHeight);
    black = !black;
  }

  black = !black;
}
}

//Add code here to draw the chessboard