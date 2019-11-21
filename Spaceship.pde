class Spaceship{
  protected double myCenterX, myCenterY, myDirectionX,myDirectionY, myPointDirection;
  protected int corners, myColor;
  protected int[] xCorners;
  protected int[] yCorners;
  public Spaceship(){
    corners=3;
    xCorners=new int[]{-8,16,-8};
    yCorners=new int[]{-8,0,8};
    myColor=255;
  }
  public void show (){
    fill(myColor);   
    stroke(myColor);
    translate((float)myCenterX, (float)myCenterY);  
    translate(100,100);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++){
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void setPointDirection(double sp){
    myPointDirection=sp;
  }
  public void hyperspace(){
    myCenterX=(int)(Math.random()*500-100);
    myCenterY=(int)(Math.random()*500-100);
    myPointDirection=(int)(Math.random()*361);
  }
}
