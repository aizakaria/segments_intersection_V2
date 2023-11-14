ArrayList<Segment> bruteForce(int start, int end , ArrayList<Segment> segments)  
{  
   // Result r = new Result(width*height, -1, -1);
    ArrayList<Segment> segBrute = new ArrayList();
    
    for (int i = 0; i < end; i++) 
    {
      boolean inter= false;
      for (int j = 0; j < end; j++)  
        {
          if(intersect(segments.get(i).p1.x,segments.get(i).p1.y,segments.get(i).p2.x,segments.get(i).p2.y,segments.get(j).p1.x,segments.get(j).p1.y,segments.get(j).p2.x,segments.get(j).p2.y))
          {
                inter = true;
                stroke(0,180,0);
                line(segments.get(i).p1.x,segments.get(i).p1.y,segments.get(i).p2.x,segments.get(i).p2.y);
          }
          
        } 
        if(inter==false)
          {
            segBrute.add(segments.get(i));  
          }
    } 
    return segBrute;  
}  
