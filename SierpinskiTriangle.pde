public void setup()
{
  background(255);
  size(500,500);
  frameRate(10);
}
public void draw()
{
  sierpinski(0,500,500);
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }else{
    fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
    sierpinski(x,y,len/2);
    fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
    sierpinski(x+len/2,y,len/2);
    fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
