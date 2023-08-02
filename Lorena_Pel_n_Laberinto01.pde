PImage img;
int colores;
int pX=250, pY=250;
void setup(){
  size(700,700);
  
  
  img=loadImage("Laberintorj.jpeg");
}
void draw(){
  image (img,0,0);
  // la pelotita 
  noFill();
  strokeWeight (5);
  stroke(#59A21E);
  ellipse (pX, pY, 25,25);
  // el pixel va leyendo el color 
  colores=get (pX, pY);
  println (colores);
  
  if (colores==-16777216){
    pX=250;
    pY=250;
  }
  //Aqui cambiara el color 
  if (colores== 0){
    textSize(30);
    fill(#641EA2);
    text("¡Lo lograste!", 40,40);
  }
}
void keyPressed(){
  if(keyCode==UP){
    pY=pY-6;
  }
   if(keyCode==DOWN){
    pY=pY+6;
    
   }
 if(keyCode==RIGHT){
    pX=pX+6;    
   }  
 if(keyCode==LEFT){
    pX=pX-6;
    
   }
}
