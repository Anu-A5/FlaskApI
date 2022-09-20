class MATHS
{
  float V2n = 0;
  float V1n = 0;
  float force = 0;
  
  MATHS(){
    this.V2n = 0;
    this.V1n = 0;
    this.force = 0;
  }
  
  public float SmallerBoxVelocity(float v2, float v1, float m1, float m2){
    float V1n = ((2*m2*v2)/m2+m1);
    return V1n;
    
  }
  public float BiggerBoxVelocity(float v2, float v1){
    float V2n = -v2+v1 + this.V1n;
    return V2n;
  }
  public float CalculateForce(float mass, float velocity){
    
    //Find Kinetic Energy
    
    float Ke = 0.5*(mass * (velocity*velocity));
    
    force = Ke/velocity;
    
    return force;
      
  }
}
