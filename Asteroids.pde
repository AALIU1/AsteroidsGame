class asteroids extends Floater{
  public double spin;
  public double speed;
  public asteroids(){
    corners=4;
    xCorners=new int[]{-45,40,42,-35};
    yCorners=new int[]{45,36,-43,-15};
    myColor=255;
    myCenterX=-99;
    myCenterY=-99;
    spin=(double)((Math.random()*6-3));
    speed=(double)(Math.random()*3+2);
    myPointDirection=(double)(Math.random()*360);
  }
  public void move(){     
    myCenterX += (Math.cos(spin))*speed;    
    myCenterY += (Math.sin(spin))*speed;  
    myPointDirection+=speed;
    if(myCenterX >width+50){     
      myCenterX = -100;    
    }    
    else if (myCenterX<-150){     
      myCenterX = width+50;    
    }    
    if(myCenterY >height+50){    
      myCenterY = -100;    
    } 
    
    else if (myCenterY < -150){     
      myCenterY = height+50;    
    } 
    for(int i=0;i<50;i++){
      if(myCenterX>=b[i].myCenterX-50 && myCenterX<=b[i].myCenterX+50 && myCenterY>=b[i].myCenterY-50 && myCenterY<=b[i].myCenterY+50){
        myCenterX=-99;
        spin=(double)((Math.random()*6-3));
        speed=(double)(Math.random()*3+2);
      }
    }
  }
}
