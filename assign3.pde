PImage bg2Img;
PImage fighterImg;
PImage enemyImg;
PImage treasureImg;
PImage hpImg;
PImage bg1Img;
PImage end1Img;
PImage end2Img;
PImage start2Img;
PImage start1Img;
int x,y,z,w,a,b,c,d,f,e,playA=0;
float speed=7;


boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean playing = false;
void setup(){
  size(640,480);
 start1Img=loadImage("img/start1.png");
 start2Img=loadImage("img/start2.png");
 bg2Img=loadImage("img/bg2.png");
 bg1Img=loadImage("img/bg1.png");
 fighterImg=loadImage("img/fighter.png");
 enemyImg=loadImage("img/enemy.png");
 hpImg=loadImage("img/hp.png");
 treasureImg=loadImage("img/treasure.png");
 end1Img=loadImage("img/end1.png");
 end2Img=loadImage("img/end2.png");
 y=0;
 z=floor(random(50,300));
 f=floor(random(50,300));
 w=640;
 a=0;
 b =550;
 c =200;
   x=30;
}
void draw() {
  image(start2Img,0,0);
  if(pmouseX>=150&&pmouseX<=540&&pmouseY>=350&&pmouseY<=420){
   image(start1Img,0,0);
 }
 if(mousePressed){
   if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420)
   playing=true;playA=2;
 }
 switch(playA){
 case 2:
 if(x==-100){
   x =200;
   b =580;
   c=220;
 }
if(playA==2){
 background(0);
 image(bg2Img,w,0);
 image(bg1Img,a,0);
 image(fighterImg,b,c);
 fill(255,0,0);
 rect(45,45,x,20,1);
 image(hpImg,40,40);
 image(treasureImg,f,z);
 e%=480;
 y%=930;
 y +=5;
 for( int i=0;i<5; i++ ){ 
   image(enemyImg,y-70*i,e);
 } 
 if(y>910){
 e=180;
 }
 if(w>=640)
 {
   w=w*-1;
 }
 if(a>=640)
 {
   a=a*-1;
 }
 w=w+5;
 a=a+5;
 if (rightPressed) {
   b += speed;
 }
 if (leftPressed) {
   b -= speed;
 }
 if (downPressed) {
   c += speed;
 }
 if (upPressed) {
   c -= speed;
 }
 if(b>580) {
 b =580;
 }
 if(b<0) {
 b =0;
 }
 if(c>430) {
 c =430;
 }
 if(c<0) {
 c =0;
 }
 if(y==0) {
   e=(int)random(430);
 }
 if(y>=b-5 && e>=c-20 && e<=c+60 && y<=b+60) {
   x-=40;
   y=0;
   e=(int)random(430);
 }
 if(f >=b-20 && z>=c-24 && z<=c+60 && f<=b+60 && x<200){
   x+=20;
   f=(int)random(600);
   z=(int)random(430);
 }
 if(x>=400){
   x=400;
  }
 if(y<=b && e<=c-20){
   e +=3;
 }
 if(y<=b && e>=c+60) {
   e -=3;
 }
 if(x<=0){
   x =-100;
   playA=1;
 }
}break;
  case 1:
  if (playA==1){
  image(end2Img,0,0);
  if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420){
  image(end1Img,0,0);}
  if(mousePressed){
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420)
    playA=2;
  }break;}}}
      




void keyPressed() {
  if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
}
