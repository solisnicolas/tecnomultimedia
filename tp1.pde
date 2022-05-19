PImage oficina;
PImage page;
PFont letradefuente;
int contador, posY;
String castinicial="THE OFFICE \n SHORTS\n"+"Now starring\n"+"John Krasinski as Jim Halpert.\n"+"Jenna Fischer as Pam Beesley.\n"+"Rainn Wilson as Dwight Schrute.\n"+"Press any key to start.";
boolean Dentrodelboton=true;


void setup() {
  size(800, 500);
  oficina= loadImage("escena"+contador+".jpg");
  contador= 1;
  textSize(32);
  posY=height;
  letradefuente= createFont("American Typewriter Regular.ttf", 32);
  textFont(letradefuente);
  Dentrodelboton = mouseX>650 && mouseX<750 && mouseY>350 && mouseY<400;
}
void draw() {
  image(oficina, 0, 0, width, height);
  textAlign(LEFT);
  text(castinicial, 40, posY, 600, 400);
  posY--;
  //text("THE OFFICE \n SHORTS\n"+"Starring\n"+"John Krasinski as Jim Halpert\n"+"Jenna Fischer as Pam Beesley\n"+"Rainn Wilson as Dwight Schrute\n",40,60);
  if (mouseX>650 && mouseX<750 && mouseY>325 && mouseY<375) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  noFill();
  stroke(0,0,0);
  rect(650, 325, 100, 50);
  //fill(0);
  text("Skip", 665, 360);
}
void keyPressed() {
  background(0);
  contador++;
  oficina=loadImage("escena"+contador+".jpg");
  image(oficina, 0, 0, width, height);
  if (contador>=8) {
    contador=1;
  }
  if(key=='f'){
  String restodecreditos="producer\n"+"JAKE AUST\n"+"co-producer\n"+"JAMES O. KERRY\n"+"&\n"+"CHARLIE GRANDY\n"+"associate producer\n"+"ERIC KOLJAN\n"+"director of photography\n"
+"RANDALL EINHORN\n"+"production designer\n"+"MICHAEL GALLENBERG\n"+"edited by\n"+"DAVID ROGERS &\n"+"DEAN HOLLAND\n"+
"based on the BBC series The Oficce\n"+"created by\n"+"RICKY GERVAIS\n"+"&\n"+"STEPHEN MERCHANT\n";
  textAlign(CENTER);
  text(restodecreditos,40,posY,600,400);
  }
}
void mousePressed() {
  if(mouseX>650 && mouseX<750 && mouseY>350 && mouseY<400){
    background(0);
    creditofinal();
  }
  
}

void creditofinal(){
  background(0);
  String fullcast="CAST\n"+"Steve Carrel as Michael Scott\n"+"Rainn Wilson as Dwight Schrute\n"+"John Kransinski as Jim Halpert\n"+"Jenna Fischer as Pam Beesley\n"+
  "B.J. Novak as Ryan Howard\n"+"Ed Helms as Andy Bernard\n"+"Oscar Nuñez as Oscar Martinez\n"+"Brian Braumgartner as Kevin Malone\n"+" Angela Kingsey as Angela Martin\n"+
  "Leslie David Baker as Stanley Hudson\n"+"Phyllis Smith as Phyllis Vance\n"+"Mindy Kaling as Kelly Kapoor\n"+"Paul Lieberstein as Toby Flenderson\n"+"Creed Bratton as Creed Bratton\n"+
  "Kate Flannery as Meredith Palmer\n"+"Craig Robinson as Darryl Philbin"+"Press F to continue\n";

  textAlign(CENTER);
  text(fullcast,40,posY,600,400);
}
