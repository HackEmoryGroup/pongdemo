class Ball{
  PVector position = new PVector(500, 325);//Default position of the ball
  PVector speed = new PVector(-5,0);
  color ballColor= color(0, 0, 255);//Makes the ball blue
  float diameter= 8;//8 pixel radius

 
  void drawBall(){
    fill(ballColor);
    stroke(ballColor);
    ellipse(position.x, position.y, diameter, diameter);
    position.x+=speed.x;
    position.y+=speed.y;
  }
}