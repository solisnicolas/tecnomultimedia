PImage vehiculo;

void setup(){
  size(800,400);
  vehiculo=loadImage("auto1.jpg");
}

void draw(){
  image(vehiculo,0,0,400,400);
  noStroke();
  fill(78,133,234);
  rect(400,0,400,200);//cielo
  fill(135,190,88);
  rect(400,200,400,200);//piso
  fill(215,195,188);
  rect(400,298,400,13);//camino
  
  fill(127,128,149);//techo
  quad(420,140,770,140,740,95,440,95);
  rect(400,145,20,55);
  rect(770,145,30,55);
  
  
  fill(227,217,190);//casa color crema
  rect(420,140,350,85);
  rect(430,80,10,45);
  rect(745,80,10,45);
  triangle(525,130,600,85,675,130);
  rect(400,165,20,45);
  rect(770,165,30,45);
  fill(158,124,52);
  rect(530,130,140,10);
  
  fill(35,59,61);// ventanas verdes
  rect(430,155,10,20);
  rect(460,155,10,20);
  rect(490,155,10,20);
  rect(520,155,10,20);
  rect(750,155,10,20);
  rect(725,155,10,20);
  rect(695,155,10,20);
  rect(670,155,10,20);
  rect(550,155,10,20);
  rect(570,155,10,20);
  rect(640,155,10,20);
  rect(620,155,10,20);
  
  
  fill(253,255,247);// palos blancos
  rect(530,130,10,100);
  rect(560,130,10,100);
  rect(630,130,10,100);
  rect(660,130,10,100);
  rect(585,190,30,30);
  
  square(440,155,20);
  square(500,155,20);
  square(675,155,20);
  square(735,155,20);
  
  fill(85,130,65);
  rect(400,220,400,10);
  
  fill(0);
  rect(460,230,290,63);//chasis
  rect(470,200,80,50);//parte de arriba
  circle(470,210,20);//borde parte de arriba
  rect(460,210,100,30);
  circle(550,210,20);//borde
  circle(750,240,20);//borde delantero

  rect(740,240,20,20);
  
  fill(178,191,226);//parte del costado
  rect(600,240,140,40);
  circle(600,260,40);
  
  fill(68,95,112);//ventana
  rect(500,210,50,20);
  
  stroke(0);// lineas de la chapa gris
  line(630,245,630,280);
  line(635,245,635,280);
  line(640,245,640,280);
  line(645,245,645,280);
  line(650,245,650,280);
  line(655,245,655,280);
  line(660,245,660,280);
  line(665,245,665,280);
  line(670,245,670,280);
  rect(495,240,10,5);
  
  fill(20,20,10);
  rect(490,285,230,10);
  beginShape();// curva delantera
  vertex(550,290);
  vertex(610,275);
  vertex(690,245);
  vertex(715,240);
  vertex(755,240);
  vertex(773,250);
  vertex(780,260);
  vertex(785,290);
  endShape();
  
  beginShape();//borde trasero
  vertex(405,285);
  vertex(420,270);
  vertex(440,245);
  vertex(460,240);
  vertex(485,250);
  vertex(495,265);
  vertex(499,280);
  vertex(460,275);
  endShape();
  
  fill(0);
  circle(750,280,60);
  circle(460,280,60);//rueda
  rect(450,305,300,4);

  
  fill(142,149,168);
  circle(460,280,45);//chapa de rueda
  circle(750,280,45);
  
  fill(195,208,224);
  rect(615,200,5,30);
  
}
