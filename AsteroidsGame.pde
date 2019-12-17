Spaceship z;
int sp=0;
int t=0;
double ac=0;
int maxspeed=0;
int num=0;
Star[] s= new Star[400];
asteroids[] p=new asteroids[10];
Bullet[] b=new Bullet[51];
public void setup(){
  size(800,800);
  z=new Spaceship();
  for(int g=0;g<p.length;g++){
    p[g]=new asteroids();
  }
  for(int i=0;i<s.length;i++){
    s[i]=new Star();
  }
  for(int v=0;v<b.length;v++){
    b[v]=new Bullet();
  }
}
public void draw(){
  background(0,0,0);
  t++;
  for(int i=0; i<s.length;i++){
    s[i].show();
  }
  for(int a=0; a<p.length;a++){
    p[a].show();
    p[a].move();
  }
  for(int h=0;h<b.length;h++){
    b[h].show();
    b[h].move();
  }
  z.turn(sp);
  z.show();
  z.move();
  z.accelerate(ac);
  if(z.myDirectionX>10){
    z.myDirectionX=10;
  }
  if(z.myDirectionX<-10){
    z.myDirectionX=-10;
  }
  if(z.myDirectionY>10){
    z.myDirectionY=10;
  }
  if(z.myDirectionY<-10){
    z.myDirectionY=-10;
  }
  if(keyPressed){
    if(key=='d'){
      sp=5;
    }
    if(key=='a'){
      sp=-5;
    }
    if(key=='w'){
      ac=0.1;
    }
    if(key=='h'&& t>20){
      z.hyperspace();
      t=0;
      z.myPointDirection=(int)(Math.random()*360);
      z.myDirectionX=0;
      z.myDirectionY=0;
      ac=0;
    }
    if(num>=50){
      num=0;
    }
    if(key==' '&& b[num].fire==0 && num<50){
      b[num].fire=1;
      num+=1;
    }
  }
  else{
    sp=0;
  }
}
class Bullet extends Floater{
  int fire;
  public Bullet(){
    corners=4;
    xCorners=new int[]{-10,10,10,-10};
    yCorners=new int[]{-5,-5,5,5};
    myColor=255;
    fire=0;
  }
  public void move(){
    if(fire==0){
      myCenterX=z.myCenterX+100;
      myCenterY=z.myCenterY+100;
      myPointDirection=z.myPointDirection;
    }
    if(fire==1){
      myCenterX += 6*Math.cos(myPointDirection*(Math.PI/180));    
      myCenterY += 6*Math.sin(myPointDirection*(Math.PI/180));  
    }
    if(myCenterX >width+50||myCenterX<-150||myCenterY >height+50||myCenterY < -150){     
      fire=0;
    }
  }
}
