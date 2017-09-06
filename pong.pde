int player1_score = 0;//Keep track of player 1 score
int player2_score = 0;//Keep track of player 2 score
Ball ball;//Initialize the ball
Paddle player, ai;//Initialize player paddle and computer paddle

void setup() {  
  size(1000, 650);//Size of the screen
  background(0);//Initialize a black background color
  textSize(60); //Set the text size to 60
  ball = new Ball();//Create a ball
  
  //Instantiate player
  PVector playerPos = new PVector(20, 20);
  PVector paddleDim = new PVector(20, 150);
  player = new Paddle(playerPos, paddleDim);
  //Instantiate computer
  PVector aiPos = new PVector(960, 20);
  ai = new Paddle(aiPos, paddleDim);
}

void draw() {
  //Clear the screen every loop
  background(0);
  
  //Display the score
  fill(0, 0, 255);
  text("P1: " + player1_score, 50, 50, 200, 200);
  text("P2: " + player2_score, 810, 50, 200, 200);
  
  //Draw the ball 
  ball.drawBall();
  player.position.y = mouseY-player.dimensions.y/2;
  ai.position.y = ball.position.y-ai.dimensions.y/2;
  //Draw the paddles
  player.drawPaddle();
  ai.drawPaddle();
}