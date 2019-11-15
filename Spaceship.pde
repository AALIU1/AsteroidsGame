class Spaceship{
  protected double myCenterX, myCenterY;
  protected double myDirectionX,myDirectionY;
  protected double myPointDirection;
  protected int corners;
  protected int[] xCorners;
  protected int[] yCorners;
  protected int myColor;
  public Spaceship(){
    corners=3;
    xCorners=new int[]{-8,16,-8};
    yCorners=new int[]{-8,0,8};
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
}
