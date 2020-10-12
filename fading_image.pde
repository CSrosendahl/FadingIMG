
boolean showOnce = true;



int last = 0; // how long our timer is set to (in milliseconds) 
int deltaValue;
int alphaValue;


PImage[] myImage = new PImage[4];




void setup() {
  size(600, 600);
  myImage[0] = loadImage("myImage0.JPG");
  myImage[1] = loadImage("myImage1.JPG");
  myImage[2] = loadImage("myImage2.JPG");
  myImage[3] = loadImage("myImage3.JPG");
}
void draw() {

  // image(myImage[index],50,50,100,100);
  // println(index);

  /*

   index = int(random(myImage.length));
   //index = newRandom;
   
   if (fiveSecPassed) {
   if (millis() > last+5000) {
   
   last = millis();
   
   println("5 sec has passed ");
   fiveSecPassed = false;
   image(myImage[index], 340, 340, 250, 250);
   //myImage[index] = (myImage[]shorten(index);
   }
   }
   
   if (!fiveSecPassed) {
   
   if (millis() > last+5000) {
   
   last = millis();
   
   println("5 sec has passed ");
   fiveSecPassed = true;
   image(myImage[index], 340, 340, 250, 250);
   }
   }
   */
  frameRate(500);
  /* if (millis() < last+5000 && showOnce) {
   
   
   image(myImage[0], 340, 340, 250, 250);
   showOnce = false;
   }*/




  for (int i = 0; i < myImage.length; i++) {

    myImage[i] = loadImage("myImage"+i+".JPG");
    if (millis() > last+5000) {

      last = millis();

      image(myImage[i], 340, 340, 250, 250);
      println(i);
    }
   
  }
}
