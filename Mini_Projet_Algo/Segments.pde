class Segment
{
PVector p1,p2;

public Segment()
{
    p1=null;
    p2=null;
}
  public Segment(PVector p1,PVector p2)
  {
    this.p1=p1;
    this.p2=p2;
  }
}
void seg(ArrayList<Segment> segments)
{
  float dis=0;
  Segment s = new Segment(); 
  for(Segment S: segments)
  {
      println(S.p1.x);
     if(dist(S.p1.x,S.p1.y,S.p2.x,S.p2.y) > dis)
     {
       dis=dist(S.p1.x,S.p1.y,S.p2.x,S.p2.y);
       s=S;
     }
      
  }
  stroke(0,0,255);//COULEUR DES SEGMENTS
    //strokeWeight(3); // SIZE DES SEGMENTS
    if(s.p1!=null)
    {
    line(s.p1.x,s.p1.y,s.p2.x,s.p2.y);
    }
    else
    {
      println("Tout les segments intersectent");
    }
}
