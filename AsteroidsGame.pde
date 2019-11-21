Spaceship z;
double sp=0;
Star[] s= new Star[400];
public void setup(){
  size(500,500);
  z=new Spaceship();
  for(int i=0;i<s.length;i++){
    s[i]=new Star();
  }
}
public void draw(){
  background(0,0,0);
  for(int i=0; i<s.length;i++){
    s[i].show();
  }
  z.setPointDirection(sp);
  z.show();
  if(keyPressed){
    if(key=='d'){
      sp+=4;
    }
    if(key=='a'){
      sp-=4;
    }
    if(key=='h'){
      z.hyperspace();
    }
  }
}
