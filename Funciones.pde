void LineasHorizontales(){
  for(int i=0;i<mouseX;i+=40){ 
    strokeWeight(2.5);
    stroke(250,0,0);
    line(i,0,i,width);
  }
}
void LineasVerticales(){
  for(int a=0;a<mouseY;a+=40){
    stroke(128, 128, 128);
    line(0,a,height,a);
  }
}

void DibujarCubos(){
      for(int Cubo=-20;Cubo<height;Cubo+=20){
        for(int contador=0;contador<720;contador+=120){
              square(Cubo,Cubo+contador,40);
              square(Cubo+contador,Cubo,40);
      }
    }

}
