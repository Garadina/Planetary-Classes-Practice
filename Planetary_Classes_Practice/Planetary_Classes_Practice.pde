int nPlanets = 190;
Planet[] p = new Planet[200];

void setup()
{
  size(850,650,P3D);
  fullScreen();
 for(int i = 0; i < nPlanets; i = i +1)
 {
 p[i]=new Planet(random(15,60),random(100,400));
 p[i].randomize();
 p[i].createMoons();
 }
}

void draw()
{
  clearScene();
  translate(width/2,height/2);
  for(int i = 0; i < nPlanets; i = i +1)
  {
  p[i].show();
  }
}

void clearScene()
{
  //partial screen clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,width,height);
}
