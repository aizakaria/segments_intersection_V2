//////////////////////////////////////
//      AJLI Zakaria                //
//      BRAHIMI Ismail              //
//      Mini-projet                 //
//      Geometrie Algorithmique     //
//////////////////////////////////////


import java.util.Collections;
import java.util.Comparator;

int N =10;
ArrayList<PVector> points = new ArrayList<PVector>();
ArrayList<Segment> rfb;
///////////////////////////////////////////
ArrayList<Segment> Liaison(ArrayList<PVector> P)
{  
  ArrayList<Segment> segments = new ArrayList();
  for(int i=0;i<P.size()-1;i++)
  {
    segments.add(new Segment(P.get(i), P.get(i+1))); // ajout des segments dans la liste relate de nombre = nombre de points-1
    i++;
    
  }
  for(Segment s : segments)
    line(s.p1.x,s.p1.y,s.p2.x,s.p2.y); 
  return segments;
}
//////////////////////////////////////////
 boolean intersect(float x1,float y1,float x2,float y2,float x3,float y3,float x4,float y4)
{
  float Ua = ((x4-x3)*(y1-y3)-(y4-y3)*(x1-x3))/((y4-y3)*(x2-x1)-(x4-x3)*(y2-y1));
  float Ub = ((x2-x1)*(y1-y3)-(y2-y1)*(x1-x3))/((y4-y3)*(x2-x1)-(x4-x3)*(y2-y1));
  if ((Ua >= 0 && Ua <= 1 && Ub >= 0 && Ub <= 1  ))
  {
     return true ;
  }
  return false;
}
//////////////////////////////////////////

////////////////////////////////////////
void setup() {
  size(500, 500);

  println("Cas pour " + N + " points :");
  //Création des points
  for (int i = 0; i < N; i++) {
    points.add(new PVector(random(width), random(height)));
  }
  strokeWeight(5);
  stroke(0);

  
  //DIVISER POUR REGNER
 // = millis();
  //Collections.sort(points, new LexicalComparison());  
  //float tmp2 = millis();
 // Result rdpr = closestUtil(0, N - 1);


  noLoop();
}

void draw() {
  background(255,255,255);
  stroke(0);
  strokeWeight(3);
  for (PVector point : points) {
    point(point.x, point.y);
  }
  /*if(intersect(points.get(0).x,points.get(0).y,points.get(1).x,points.get(1).y,points.get(2).x,points.get(2).y,points.get(3).x,points.get(3).y))
  {
    println("Intersection brute force");
   
  }
  else
  {
   println("Pas d'intersection brute force");
  }*/
  ArrayList<Segment > segments = Liaison(points);
  //FORCE BRUTE
  int start = millis();
   rfb = bruteForce(0, (N/2),segments);
   seg(rfb);
  int temp = millis()- start;
  println("temps = "+temp); 
  noLoop();
   stroke(0);
  //seg(segments); // AFFICHAGE DES SEGMENTS
}
