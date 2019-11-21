class Star{
  private int sa, sb;
  public Star(){
    sa=(int)(Math.random()*2000);
    sb=(int)(Math.random()*1000);
  }
  void show(){
    ellipse(sa,sb,2,2);
  }
}
