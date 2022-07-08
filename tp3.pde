// Link al video de YouTube
//https://youtu.be/KoFgWs119IE

int posXfrog;
int posYfrog;
int posXObstaculos=0;
int velX=1;
//int posYobstaculos;
int [] Obstaculo = new int [6];// posiciones en y de los obstaculos
boolean reiniciarjuego=true;

void setup(){
  Obstaculo[0]=110;
  Obstaculo[1]=160;
  Obstaculo[2]=210;
  Obstaculo[3]=310;
  Obstaculo[4]=360;
  Obstaculo[5]=410;
  size(500,500);
  frameRate(15);
  posXfrog = 260;
  posYfrog = 450;
  
  reiniciarjuego = mouseX>450 && mouseX<500 && mouseY>350 && mouseY<400;

  
}
void draw(){
  coloresyfondo();
  textSize(35); 
  text("FROGGER",10,40);
  fill(0);
  text("Meta",200,85);
  textSize(15);
  
  for(int i=0;i<6;i++){
    Obstaculos(Obstaculo[i]);
  }
 
  fill(205,255,0);
  rect(posXfrog,posYfrog,40,40);
  if (mouseX>430 && mouseX<500 && mouseY>450 && mouseY<500) { //reiniciar
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  text("Reiniciar",430,480); //reiniciar

}
  
  
  
