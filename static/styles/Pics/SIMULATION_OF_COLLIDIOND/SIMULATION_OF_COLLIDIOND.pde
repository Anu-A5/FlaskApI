//box Box1 = new box(10, 5, 50);
//box Box2 = new box(20, -5, 600);

box[] BOX_ARRAY = {new box(10,10,200,0), new box(20, -5, 600,1)};

void setup()
{
  
  size(800, 500);
  background(255);
  
  
}

void draw()
{
  background(255);
  line(20,20,20,440);
  line(20,440,780,440);
  line(780, 440, 780, 20);
  //Box1.move();
  //Box2.move();
  
  BOX_ARRAY[0].move();
  BOX_ARRAY[1].move();
  
  //println(BOX_ARRAY[0].posx);
  //println(BOX_ARRAY[1].posx);
  
}
