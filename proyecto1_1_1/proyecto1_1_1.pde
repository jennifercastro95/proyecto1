//variables que se ejecutaran
Personajes zeus;
Personajes kronos;
Personajes urano;
Personajes ares;
Personajes odigo;
int turno;
int pantalla;
int player1;
int player2;
Personajes J1;
Personajes J2;
float resultado1,resultado2;
PFont font;



 class Personajes{
  String nombre;
  int ataque1;
  int dibujo; 
  int v;
  
  Personajes (String nombre_, int ataque1_,int dibujo_,int v_){
  nombre= nombre_;
  ataque1= ataque1_;
  dibujo= dibujo_;
  v=v_;
 }
 
 }
 

void setup(){
  
  size (700,650);
  background(1);
  font = createFont("LithosPro-Regular",50);
  
  
  
}

  void historia(){
    background(220, 118, 51);
  fill(0);
  textSize(65);
  textFont(font);
  text(" GODS ", 150,250);
  textSize(40);
  text(" of ", 160,290);
  textSize(65);
  text(" OLYMPUS ", 200,310);
  textSize(25);
  fill(52,73,94);
  text("press (z) to continue",200,400);
  }
  
  
//player1
void Personajes1(){
  background(255);
  text("letras minusculas",100,540);
  pushMatrix();
  textSize(20);
  text("Zeus:press(m)",100,560);
  scale(0.45);
  translate(500,50);
  zeus();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Kronos:press(n)",100,580);
  scale(0.45);
  translate(200,250);
  kronos();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Ares:press(o)",100,600);
  scale(0.45);
  translate(250,500);
  ares();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Urano:press(p)",100,620);
  scale(0.45);
  translate(600,700);
  urano();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Odigo:press(q)",100,640);
  scale(0.45);
  translate(550,300);
  odigo();
  popMatrix();
  //
  
 
}
//player2
void Personajes2(){
  background(255);
  text("letras mayusculas",100,540);
  pushMatrix();
  textSize(20);
  text("Zeus:press(m)",100,560);
  scale(0.45);
  translate(650,30);
  zeus();
  popMatrix();
  //
   pushMatrix();
   textSize(20);
  text("Kronos:press(n)",100,580);
  scale(0.45);
  translate(200,250);
  kronos();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Ares:press(o)",100,600);
  scale(0.45);
  translate(250,500);
  ares();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Urano:press(p)",100,620);
  scale(0.45);
  translate(700,700);
  urano();
  popMatrix();
  //
  pushMatrix();
  textSize(20);
  text("Odigo:press(q)",100,640);
  scale(0.40);
  translate(280,290);
  odigo();
  popMatrix();
  //
}

void batalla(){
  if(turno==player1){
    text("elije jugador1",100,100);
  }else{
    turno=player2;
    text("elije jugador2",100,100);
  }
}
 
  
void Score(){
}

void draw(){
switch (pantalla){
case 0:
historia();
  
if (keyPressed){
  if((key=='z'|| key=='Z') ){
    pantalla=1;
  }
  }


break;
case 1:
background(220, 118, 51);
fill(0);
textSize(20);
text("Los Dioses griegos viven en el Olimpo, ",150,160);
text("y desde ahí tienen el control sobre el mundo...",100,180);
text("pero ahora estan en guerra por el poder absoluto.",80,200);
textSize(25);
text("¿quien gobernara al mundo?",150,300);
textSize(25);
fill(52,73,94);
text("press (w) to continue",200,400);

if (keyPressed){
  if((key=='w'|| key=='W') ){
    pantalla=2;
  }
  }
break;

case 2:

background(220, 118, 51);
Personajes1();
batalla();

zeus=new Personajes("zeus",25,0,100);
kronos=new Personajes("kronos",35,1,100);
ares=new Personajes("ares",30,2,100);
urano=new Personajes("urano",20,3,100);
odigo=new Personajes("odigo",40,4,100);

if(keyPressed){
  if(key=='m'){
    J1=zeus;
    pantalla=3;
  }  
}
if(key=='n'){
  J1=kronos;
  pantalla=3;
}
if(key=='o'){
  J1=ares;
  pantalla=3;
}
if(key=='p'){
  J1=urano;
  pantalla=3;
}
if(key=='q'){
  J1=odigo;
  pantalla=3;
}



break;
case 3:

Personajes2();
text("elije Jugador2",100,100);
turno=player2;
if(keyPressed){
  if(key=='M'){
    J2=zeus;
    pantalla=4;
  }  
}
if(key=='N'){
  J2=kronos;
  pantalla=4;
}
if(key=='O'){
  J2=ares;
  pantalla=4;
}
if(key=='P'){
  J2=urano;
  pantalla=4;
}
if(key=='Q'){
  J2=odigo;
  pantalla=4;
}


break;
case 4:
background(220, 118, 51);
text("ataqueJ1:press(a)",10,600);
text("ataqueJ2:press(l)",380,600);
text(J1.v,10,50);
text(J2.v,400,50);
text(J1.nombre,150,50);
text(J2.nombre,550,50);
fill(23, 32, 42);
rect(10, 70, J1.v*3, 20);
rect(380, 70, J2.v*3, 20);



if(keyPressed){
  if((key=='a')&&J1.v>0){
    J1.v-=J2.ataque1;
  }
}
if(keyPressed){
  if((key=='l')&&J2.v>0){
    J2.v-=J1.ataque1;
  }
}
if(J1.v<1){
  pantalla=5;
}
if(J2.v<1){
  pantalla=5;
}

break;
case 5:
background(220, 118, 51);
if(J1.v<1){
  text(J2.nombre,300,350);
}else{
  text(J1.nombre,300,350);
}
pantalla=0;
break;}}
