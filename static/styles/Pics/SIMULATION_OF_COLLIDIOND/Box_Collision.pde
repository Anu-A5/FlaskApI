class Box_Collision
{
  
  void BoxC(){
    
    
    
    
    float[] smallcentre = {BOX_ARRAY[0].posx, BOX_ARRAY[0].size, BOX_ARRAY[0].velocity, BOX_ARRAY[0].mass};
    float[] bigcentre = {BOX_ARRAY[1].posx, BOX_ARRAY[1].size, BOX_ARRAY[1].velocity, BOX_ARRAY[1].mass};
    
    if((smallcentre[0] + (smallcentre[1]/2) == bigcentre[0] - bigcentre[1]/2) || (smallcentre[0] + (smallcentre[1]/2) > bigcentre[0] - bigcentre[1]/2)){
      //println("true");
      MomentumCollision(bigcentre, smallcentre);
      //bForceCollision(bigcentre, smallcentre);
    }
  }
  
  void MomentumCollision(float[] bigcentre, float[] smallcentre){
    
    MATHS math = new MATHS();

    BOX_ARRAY[0].velocity = math.SmallerBoxVelocity(bigcentre[2], smallcentre[2], smallcentre[3], bigcentre[3]);
    BOX_ARRAY[1].velocity = math.BiggerBoxVelocity(bigcentre[2], smallcentre[2]);
  }
  
  void ForceCollision(float[] bigcentre, float[] smallcentre){
    MATHS math = new MATHS();
    
    float KEb1 = math.CalculateForce(bigcentre[3], bigcentre[2]);
    float KEb2 = math.CalculateForce(smallcentre[3], smallcentre[2]);
    
    float resultant_force = KEb1 - KEb2;
    
    BOX_ARRAY[0].velocity = (2*resultant_force)/smallcentre[3];
    BOX_ARRAY[1].velocity = (2*resultant_force)/bigcentre[3];
    
    println(BOX_ARRAY[0].velocity);
    
    
  }
    
    
}
