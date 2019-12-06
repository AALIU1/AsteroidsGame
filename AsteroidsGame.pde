Spaceship z;
int sp=0;
int t=0;
double ac=0;
int maxspeed=0;
Star[] s= new Star[400];
public void setup(){
  size(800,800);
  z=new Spaceship();
  for(int i=0;i<s.length;i++){
    s[i]=new Star();
  }
}
public void draw(){
  background(0,0,0);
  t++;
  for(int i=0; i<s.length;i++){
    s[i].show();
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
  }
  else{
    sp=0;
  }
}
