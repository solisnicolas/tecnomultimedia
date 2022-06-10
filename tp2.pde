// Link al video de YouTube
//https://youtu.be/046HOU9EMZ8

void setup(){
size(700,700);
  
}
void draw(){
  background(255, 255, 0);


    DibujarCubos();
      fill(255,255,0);
      rect(160,160,360,360);
      
      fill(0); 
      int posX=160; // linea del medio
      int posY= 480;
    for(int Cubo=posY;Cubo>140;Cubo-=20){
      for(int contador=0;contador<40;contador+=40){
      square(posX+contador,posY,40);
      posX=posX+20;
      posY=posY-20;
      }
    }
    
      int posX2=260; //linea inferior 1
      int posY2= 500;
    for(int Cubo=posY2;Cubo>250;Cubo-=20){
      for(int contador=0;contador<40;contador+=40){
      square(posX2+contador,posY2,40);
      posX2=posX2+20;
      posY2=posY2-20;
      }
    }
      int posX3=380;  //linea inferior 2
      int posY3= 500;
    for(int Cubo=posY3;Cubo>370;Cubo-=20){
      for(int contador=0;contador<40;contador+=40){
      square(posX3+contador,posY3,40);
      posX3=posX3+20;
      posY3=posY3-20;
      }
    }
    
    
      int posX4=140;  //linea superior 1
      int posY4= 380;
    for(int Cubo=posY4;Cubo>120;Cubo-=20){
      for(int contador=0;contador<40;contador+=40){
      square(posX4+contador,posY4,40);
      posX4=posX4+20;
      posY4=posY4-20;
      }
    }
    
    int posX5=140;  //linea superior 2
      int posY5= 260;
    for(int Cubo=posY5;Cubo>130;Cubo-=20){
      for(int contador=0;contador<40;contador+=40){
      square(posX5+contador,posY5,40);
      posX5=posX5+20;
      posY5=posY5-20;
      }
    }
    square(160,160,20);
    square(500,500,20);
    
    LineasHorizontales();
    LineasVerticales();
    noStroke();
    fill(0);
    

}
