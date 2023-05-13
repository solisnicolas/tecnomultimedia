int pantalla = 1;
int posY = 0;
int posX = 0;
int posW = 500;
int posZ = 250;
int segundos = 0;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PFont letravespa;
String txt1 ="La presentación de las primeras \nquince motos Vespa \ntuvo lugar el 23 de abril de 1946 \nen el Club de Golf de Roma";
String txt2 ="Los padres de la nueva moto eran \nel empresario \nEnrico Piaggio \ny el ingeniero aeronáutico \nCorradino D'Ascanio.";
String txt3 ="Desde su aparición \na mediados de los cincuenta, \nmiles de unidades llenaron \nlas calles de las ciudades.";
String txt4 ="La Vespa es un producto italiano que ha \nrespondido a las exigencias del mercado, \nasumiendo funciones diferentes \ne integrándose en otras culturas, pero siempre \npermaneciendo fiel a su estilo.";


void setup(){
  size(640,480);
  textSize(25);
  
  imagen1 = loadImage("vespa1.png");
  imagen2 = loadImage("vespa2.png");
  imagen3 = loadImage("vespa3.png");
  imagen4 = loadImage("vespa4.png");
  imagen5 = loadImage("final.png");
  
  letravespa = createFont("Nexa Light.otf",25);
  textFont(letravespa);
  
}

void draw(){
  background(200);
  
  if(frameCount % 60 == 0){
    segundos = segundos + 1;
  }
  
  
  if (pantalla == 1){
    image(imagen1,0,0,640,480);
    text(txt1,50,posY);
    posY++;
  }
  
  if(segundos>=6 && segundos<=12){
    pantalla = 2;
    //fill(0);
    image(imagen2,0,0,640,480);
    text(txt2,posX,300);
    posX++;
  }
  if(segundos>=12 && segundos<=17){
    pantalla = 3;
    fill(255);
    image(imagen3,0,0,640,480);
    text(txt3,posZ,300);
    posZ--;
  }
  if(segundos>=17 && segundos<=25){
    pantalla = 4;
    image(imagen4,0,0,640,480);
    text(txt4,50,posW);
    posW--;
  }
  if(segundos>25){
    pantalla = 5;
    background(255);
    image(imagen5,500,400,100,50);
  }
  if(mouseX>500 && mouseX<600 && mouseY>400 && mouseY<450 && pantalla == 5){ // Hacer que el mouse cambie cuando estoy sobre el boton
    cursor(HAND);
  }else{
    cursor(ARROW);
  }

}

void mouseClicked(){
  if(mouseX>500 && mouseX<600 && mouseY>400 && mouseY<450 && pantalla == 5){
    pantalla=1;
    segundos=0;
    posY = 0;
    posX = 0;
    posW = 500;
    posZ = 250;
  }

}
