class box
{
  int mass;
  float velocity;
  float posx, posy;
  int apos;
  int size;
  
  
  box(int mass, float velocity, int posx, int apos)
  {
    this.mass = mass/10;
    this.size = mass*10;
    this.velocity = velocity/10;
    this.posx = posx;
    this.posy = 440-0.5*this.size; //Always describes the centre of the square.
    this.apos = apos;
    
    
    
    //square(this.initial_pos, 440-this.size,this.size);
    
  }
  
  void move(){
    Box_Collision Collision = new Box_Collision();
    
    rectMode(CENTER);
    
    square(this.posx, this.posy,this.size);
    
    
    //line(this.posx, this.posy, this.posx+(this.mass/2), this.posy);
    
    this.wallcol();
    Collision.BoxC();
    this.posx = this.posx + this.velocity;
    
  }
  
  
  void wallcol(){
    float[] mycentre = {this.posx, this.posy};
    //println(this.posx);
    if(mycentre[0]-(this.size/2) < 20){
      //println("true");
      this.velocity = this.velocity * -1;
    
    }else if(mycentre[0]+this.size/2>780){
      this.velocity = this.velocity * -1;
    }
     
  }
  
}
