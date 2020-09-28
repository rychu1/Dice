void setup()
  {
      noLoop();
      size(1000, 1000);
      ellipse (50, 50, 50, 50);
  }
  void draw()
  {
      int total = 0;
      background(255);
      fill(255);
      Die one;
      one = new Die(50, 50);
      one.roll();
      one.show();
      Die two;
      two = new Die(100, 50);
      two.roll();
      two.show();
      Die three;
      three = new Die(150, 50);
      three.roll();
      three.show();
      Die four;
      four = new Die(50, 100);
      four.roll();
      four.show();
      Die five;
      five = new Die(100, 100);
      five.roll();
      five.show();
      Die six;
      six = new Die(150, 100);
      six.roll();
      six.show();
      Die seven;
      seven = new Die(50, 150);
      seven.roll();
      seven.show();
      Die eight;
      eight = new Die(100, 150);
      eight.roll();
      eight.show();
      Die nine;
      nine = new Die(150, 150);
      nine.roll();
      nine.show();
      fill(0);
      text((one.diceroll+two.diceroll+three.diceroll+four.diceroll+five.diceroll+six.diceroll+seven.diceroll+eight.diceroll+nine.diceroll), 50, 250);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int dicex, dicey, diceroll;
      
      Die(int x, int y) //constructor
      {
          dicex = x;
          dicey = y;
      }
      void roll()
      {
          diceroll = (int)(Math.random() * 6+1);         
      }
      void show()
      {
      if (diceroll == 1) {
      rect(dicex, dicey, 50, 50);
      ellipse(dicex + 25, dicey + 25, 10, 10);    
      } else if (diceroll == 2) {
      rect(dicex, dicey, 50, 50);
      ellipse(dicex + 15, dicey + 15, 10, 10);
      ellipse(dicex + 35, dicey + 35, 10, 10);      
      } else if (diceroll == 3) {
      rect(dicex, dicey, 50, 50);
      ellipse(dicex + 15, dicey + 15, 10, 10); 
      ellipse(dicex + 25, dicey + 25, 10, 10);
      ellipse(dicex + 35, dicey + 35, 10, 10);      
      } else if (diceroll == 4) {
      rect(dicex, dicey, 50, 50);
      ellipse(dicex + 15, dicey + 15, 10, 10);
      ellipse(dicex + 35, dicey + 35, 10, 10);
      ellipse(dicex + 15, dicey + 35, 10, 10);
      ellipse(dicex + 35, dicey + 15, 10, 10);      
      } else if (diceroll == 5) {
      rect(dicex, dicey, 50, 50);
      ellipse(dicex + 15, dicey + 15, 10, 10);
      ellipse(dicex + 35, dicey + 35, 10, 10);
      ellipse(dicex + 15, dicey + 35, 10, 10);
      ellipse(dicex + 35, dicey + 15, 10, 10);  
      ellipse(dicex + 25, dicey + 25, 10, 10);      
      } else if (diceroll == 6) {
      rect(dicex, dicey, 50, 50);
      ellipse(dicex + 15, dicey + 5, 10, 10);
      ellipse(dicex + 35, dicey + 45, 10, 10);
      ellipse(dicex + 15, dicey + 45, 10, 10);
      ellipse(dicex + 35, dicey + 5, 10, 10); 
      ellipse(dicex + 15, dicey + 25, 10, 10);
      ellipse(dicex + 35, dicey + 25, 10, 10);
      }
      }
  }
