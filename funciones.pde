void coloresyfondo(){
  background(0); // fondo
  fill(128, 0, 128);
  rect(0,450,500,50);
  rect(0,250,500,50);
  fill(0,0,128);
  rect(0,0,500,250);
  fill(0,200,0);
  rect(0,50,500,50); // fondo

}

void keyPressed() {
  if (keyCode == RIGHT) {
    posXfrog++;
  } else if (keyCode == LEFT) {
    posXfrog--;
  } else if (keyCode == UP) {
    posYfrog--;
  } else if (keyCode == DOWN) {
    posYfrog++;
  }
}
void mouseClicked() {
  if(mouseX>430 && mouseX<500 && mouseY>450 && mouseY<500){
    background(0);
    
    //coloresyfondo();
    text("Perdiste :c",250,250);
    reiniciarjuego=false;
    posXfrog = 259;
    posYfrog = 450;
  
    for(int i=0;i<6;i++){
      Obstaculos(Obstaculo[i]);
  }
 ; }
  
}
void Obstaculos(int posYobstaculos){
  fill(255);
  rect(posXObstaculos,posYobstaculos,70,40);
  posXObstaculos=posXObstaculos+velX;
  if(posXObstaculos>=width+10){
    velX=-1;
  }
  if(posXObstaculos<=-100){
    velX=1;
  }
}
