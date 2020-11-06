Bacteria [] bacteriaArray;
 void setup()   
 {    
   size(500,500);
   bacteriaArray = new Bacteria [30];
   for (int i = 0; i < bacteriaArray.length; i+=1){
     bacteriaArray[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   int score = 0;
   for(int j = 0; j < bacteriaArray.length; j++)
   {
     bacteriaArray[j].show();
     bacteriaArray[j].move();
     if (bacteriaArray[j].touched == true){
       score +=1;
     }
   }
   fill(255,255,255);
   text("Butterflies caught: " + score, 175,400);
 } 

 class Bacteria    
 {     
   float myX, myY, finalX, finalY;
   color myColor;
   boolean touched;
   //constructor
   Bacteria(){
     myX = 250;
     myY = 250;
     myColor = color((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);;
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,25,25);
     if (get(mouseX, mouseY) == myColor){
       touched = true;
       myColor = color(0,0,0);
     }
   }
   void move()
   {
    myX += (int)(Math.random()*19)-9;
    myY += (int)(Math.random()*19)-9;
   }
 } 
