class Paddle {
  //Instance variable declarations
  PVector position;
  PVector dimensions;  
  color paddleColor = color(0, 255, 0);

  Paddle(PVector _position, PVector _dimensions) {//Set the local variables passed in to the instance variables
    position = _position;
    dimensions = _dimensions;
  }
  void drawPaddle() {
    //Draw and color the paddle
    fill(paddleColor);
    stroke(paddleColor);
    rect(position.x, position.y, dimensions.x, dimensions.y);

    //Check if the ball is off the screen and update score
    checkOffScreen();
    
    //Check if the ball collided with a paddle
    checkCollision();
  }
    void checkOffScreen() {
    //If the ball passes the player
    if (ball.position.x<0) {
      player2_score++;//Add a point to the computer
      ball.speed.y=0;//Reset ball y speed
      ball.position.x=500;//Reset x position of the ball
    }
    //If the ball goes passed the computer
    if (ball.position.x>1000) {
      player1_score++;//Add a point to the player
      ball.speed.y=0;//Reset ball y speed
      ball.position.x=500;//Reset x position of the ball
    }

    if (ball.position.y<0) {//If the ball hits the top
      ball.speed.y=2;//Change the ball speed to downwards
    }

    if (ball.position.y>650) {//If the ball hits the bottom
      ball.speed.y=-2;//Change the ball speed to go upwards
    }
  }
  void checkCollision(){
  //If the ball is moving to the left 
    if (ball.speed.x<0) {
      if (ball.position.x<(player.position.x+player.dimensions.x) && ball.position.y>player.position.y && ball.position.y < (player.position.y+player.dimensions.y)) {
        ball.speed.x*=-1;//Change the direction of the ball
        ball.speed.y=random(-3, 3);//Give the ball a random Y speed
      }
    }
    //If the ball is moving to the right
    else {
      if (ball.position.x>960 && ball.position.y>ai.position.y && ball.position.y < (ai.position.y+ai.dimensions.y)) {
        ball.speed.x*=-1;//Change the direction of the ball
        ball.speed.y=random(-5, 5);//Give the ball a random Y speed
      }
    }
  }
}