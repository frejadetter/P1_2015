void rain() {
  PVector rainDrop1; 
  noStroke(); 
  fill(48, 85, 150, 50); 



  //many drops
  for (int i = 0; i < rainDrops.length; i ++) {
    rainDrop1 = rainDrops[i];
    rainDrop1.x = rainDrop1.x + random(1, 3); 
    rainDrop1.y = rainDrop1.y + random (40, 200);
    ellipse(rainDrop1.x, rainDrop1.y, 4, random(10, 20));
    
    
  if (rainDrop1.y > height) {
    rainDrop1.y = 0;
    rainDrop1.x = random(0, width);
  }
  }
}