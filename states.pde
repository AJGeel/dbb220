/* Colours and images */
PImage img0;
PImage imgAGood;
PImage imgABad;
PImage imgBGood;
PImage imgBBad;
PImage imgCGood;
PImage imgCBad;

color lightGray = color(178,174,201);
color deepGray = color(40);
color deepRed = color(246,110,98);
color black = color(0);

int imgWidth = 550;
int imgHeight = 216;
int smallText = 16;
int bigText = 28;
int padding = 60;

/* Global variables */
int repCount = 7; // Amount of reps used in each set
String repCountStr = ("0" + repCount);
String stylizedRepCount = repCountStr.substring(repCountStr.length()-2); // Adds a 0 in front of numbers 0 to 9.


String[] exercises = {"Biceps Curl", "Lateral Raise", "Arnold Press"}; // Array with the names of all exercises
int exCount = 0; // Number that retrieves the correct exercise from the array 

void setup(){
  // size(1440, 1024);  factor 1.8 scaled down
  size(800, 500);
  background(255);
  img0 = loadImage("img0.jpg");
  imgAGood = loadImage("img-a-good.jpg");
  imgABad = loadImage("img-a-bad.jpg");
  imgBGood = loadImage("img-b-good.jpg");
  imgBBad = loadImage("img-b-bad.jpg");
  imgCGood = loadImage("img-c-good.jpg");
  imgCBad = loadImage("img-c-bad.jpg");
}

void draw() {  
  // currently: nothing.
}

void keyPressed() {  
  if (key == 'a' || key == 'A'){          //        -----------------------------------------------------------   STARTING SCREEN   --------------------------------------------------------------------------------------
  textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(bigText*1.5);
  fill(deepGray);
  text("Let's Exercise!", width/2, padding*1.4);
  fill(lightGray);
  textSize(smallText*1.5);
  text("Why not start with one of these?", width/2, padding*2);
  
  
  fill(black);
  text(exercises[0], .2*width, height-padding*.8);
  text(exercises[1], .5*width, height-padding*.8);
  text(exercises[2], .8*width, height-padding*.8);
 
  
  /* Central image */
  imageMode(CENTER);
  image(img0, width/2, height*.58, 700, 250);

  }
  
  
  if (key == 'b' || key == 'B'){          //        -----------------------------------------------------------   EXERCISE A: GOOD FORM   --------------------------------------------------------------------------------------
  textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(smallText);
  fill(lightGray);
  text("CURRENT EXERCISE", width/2, padding/2);
  textSize(bigText+bigText/5);
  fill(black);
  text(exercises[exCount], width/2, padding+padding/8);
  
  /* Bottom left text*/
  textAlign(LEFT);
  textSize(smallText);
  fill(lightGray);
  text("REP COUNT", 50, height-padding);
  textSize(bigText);
  fill(black);
  text(stylizedRepCount, 50, height-padding/2);
  fill(lightGray);
  text("/ 10", 100, height-padding/2);
  
  /* Bottom right text*/
  textAlign(RIGHT);
  textSize(smallText);
  fill(lightGray);
  text("NEXT EXERCISE", width-padding/2, height-padding);
  textSize(bigText);
  fill(black);
  text(exercises[exCount+1], width-padding/2, height-padding/2);
  
  /* Central image */
  imageMode(CENTER);
  image(imgAGood, width/2, height*.43, imgWidth, imgHeight);
  }
  
  if (key == 'c' || key == 'C'){          //        -----------------------------------------------------------   EXERCISE A: BAD FORM 1   --------------------------------------------------------------------------------------
  textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(smallText);
  fill(lightGray);
  text("CURRENT EXERCISE", width/2, padding/2);
  textSize(bigText+bigText/5);
  fill(black);
  text(exercises[exCount], width/2, padding+padding/8);
  
  /* Bottom left text*/
  textAlign(LEFT);
  textSize(smallText);
  fill(lightGray);
  text("REP COUNT", 50, height-padding);
  textSize(bigText);
  fill(black);
  text(stylizedRepCount, 50, height-padding/2);
  fill(lightGray);
  text("/ 10", 100, height-padding/2);
  
  /* Bottom right text*/
  textAlign(RIGHT);
  textSize(smallText);
  fill(lightGray);
  text("NEXT EXERCISE", width-padding/2, height-padding);
  textSize(bigText);
  fill(black);
  text(exercises[exCount+1], width-padding/2, height-padding/2);
  
  /* Central image */
  imageMode(CENTER);
  image(imgABad, width/2, height*.43, imgWidth, imgHeight);
  fill(deepRed);
  textAlign(CENTER);
  textSize(3*bigText/4);
  text("Try to keep your arms further from your chest.", width/2, height/2+140);
  }
  
  if (key == 'd' || key == 'D'){          //        -----------------------------------------------------------   EXERCISE B: GOOD FORM    --------------------------------------------------------------------------------------
  textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(smallText);
  fill(lightGray);
  text("CURRENT EXERCISE", width/2, padding/2);
  textSize(bigText+bigText/5);
  fill(black);
  text(exercises[exCount+1], width/2, padding+padding/8);
  
  /* Bottom left text*/
  textAlign(LEFT);
  textSize(smallText);
  fill(lightGray);
  text("REP COUNT", 50, height-padding);
  textSize(bigText);
  fill(black);
  text(stylizedRepCount, 50, height-padding/2);
  fill(lightGray);
  text("/ 10", 100, height-padding/2);
  
  /* Bottom right text*/
  textAlign(RIGHT);
  textSize(smallText);
  fill(lightGray);
  text("NEXT EXERCISE", width-padding/2, height-padding);
  textSize(bigText);
  fill(black);
  text(exercises[exCount+2], width-padding/2, height-padding/2);
  
  /* Central image */
  imageMode(CENTER);
  image(imgBGood, width/2, height*.43, imgWidth, imgHeight);
  }
  if (key == 'e' || key == 'E'){          //        -----------------------------------------------------------   EXERCISE B: BAD FORM 1   --------------------------------------------------------------------------------------
  textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(smallText);
  fill(lightGray);
  text("CURRENT EXERCISE", width/2, padding/2);
  textSize(bigText+bigText/5);
  fill(black);
  text(exercises[exCount+1], width/2, padding+padding/8);
  
  /* Bottom left text*/
  textAlign(LEFT);
  textSize(smallText);
  fill(lightGray);
  text("REP COUNT", 50, height-padding);
  textSize(bigText);
  fill(black);
  text(stylizedRepCount, 50, height-padding/2);
  fill(lightGray);
  text("/ 10", 100, height-padding/2);
  
  /* Bottom right text*/
  textAlign(RIGHT);
  textSize(smallText);
  fill(lightGray);
  text("NEXT EXERCISE", width-padding/2, height-padding);
  textSize(bigText);
  fill(black);
  text(exercises[exCount+2], width-padding/2, height-padding/2);
  
  /* Central image */
  imageMode(CENTER);
  image(imgBBad, width/2, height*.43, imgWidth, imgHeight);
  fill(deepRed);
  textAlign(CENTER);
  textSize(3*bigText/4);
  text("Try to raise your arms up higher.", width/2, height/2+140);
  }
  
  if (key == 'f' || key == 'F'){          //        -----------------------------------------------------------   EXERCISE C: GOOD FORM   --------------------------------------------------------------------------------------
    textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(smallText);
  fill(lightGray);
  text("CURRENT EXERCISE", width/2, padding/2);
  textSize(bigText+bigText/5);
  fill(black);
  text(exercises[exCount+2], width/2, padding+padding/8);
  
  /* Bottom left text*/
  textAlign(LEFT);
  textSize(smallText);
  fill(lightGray);
  text("REP COUNT", 50, height-padding);
  textSize(bigText);
  fill(black);
  text(stylizedRepCount, 50, height-padding/2);
  fill(lightGray);
  text("/ 10", 100, height-padding/2);
  
  /* Bottom right text*/
  textAlign(RIGHT);
  textSize(smallText);
  fill(lightGray);
  text("NEXT EXERCISE", width-padding/2, height-padding);
  textSize(bigText);
  fill(black);
  text(exercises[exCount], width-padding/2, height-padding/2);
  
  /* Central image */
  imageMode(CENTER);
  image(imgCGood, width/2, height*.43-15, imgWidth, imgHeight+30);
  }
  if (key == 'g' || key == 'G'){          //        -----------------------------------------------------------   EXERCISE C: BAD FORM 1   --------------------------------------------------------------------------------------
  textAlign(CENTER);
  background(255);
  
  /* Top text */
  textSize(smallText);
  fill(lightGray);
  text("CURRENT EXERCISE", width/2, padding/2);
  textSize(bigText+bigText/5);
  fill(black);
  text(exercises[exCount+2], width/2, padding+padding/8);
  
  /* Bottom left text*/
  textAlign(LEFT);
  textSize(smallText);
  fill(lightGray);
  text("REP COUNT", 50, height-padding);
  textSize(bigText);
  fill(black);
  text(stylizedRepCount, 50, height-padding/2);
  fill(lightGray);
  text("/ 10", 100, height-padding/2);
  
  /* Bottom right text*/
  textAlign(RIGHT);
  textSize(smallText);
  fill(lightGray);
  text("NEXT EXERCISE", width-padding/2, height-padding);
  textSize(bigText);
  fill(black);
  text(exercises[exCount], width-padding/2, height-padding/2);
  
  /* Central image */
  imageMode(CENTER);
  image(imgCBad, width/2, height*.43-15, imgWidth, imgHeight+30);
  fill(deepRed);
  textAlign(CENTER);
  textSize(3*bigText/4);
  text("Don't forget to rotate your wrists.", width/2, height/2+140);
  }
  if (key == 'j' || key == 'J'){          //        -----------------------------------------------------------   EXERCISE B: BAD FORM 2   --------------------------------------------------------------------------------------
    //
  }
  
}