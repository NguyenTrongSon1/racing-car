void setup()
{
  size(800,800);
  background(225);
  fill(255);
}


noStroke();

// position of the car
var x = 10;
var y = 100;
var x1 = 10;
var x2=10;
var leftX = 160;
var rightX = 300;
var sunRadius = 100;


draw = function() {
    // all lines of code inside here will be run repeatedly
    background(151, 244, 247);

    fill(0,0,0);
    rect(0,450,800,200);

    fill(255,255,255);
    rect(0,550,800,10);
    drawCar(mouseX,mouseY);
    drawCar2(x2+50,y+400);
     x = x + 5;
    if(x>650) x = 10;
    x1 = x1 + 1;
    if(x1 > 650) x1=10;
    x2 = x2 + 3;
    if(x2 > 650) x2 = 10;

    fill(255, 170, 0);
            ellipse(200, 100, sunRadius, sunRadius);

            // clouds
            fill(255, 255, 255);
            // left cloud
            ellipse(leftX, 155, 126, 97);
            ellipse(leftX+62, 150, 70, 60);
            ellipse(leftX-62, 150, 70, 60);

            // right cloud
            ellipse(rightX, 100, 126, 97);
            ellipse(rightX+62, 100, 70, 60);
            ellipse(rightX-62, 100, 70, 60);

            leftX -= 1;
             if(leftX < -100) leftX = 150;
            rightX += 1;
            if(rightX > 650) rightX = 50;



};

drawCar = function(var xPoint, var yPoint){
  // draw the car body
  fill(255, 0, 115);
  rect(xPoint, yPoint, 100, 20);
  rect(xPoint + 15, yPoint-22, 70, 40);

  // draw the wheels
  fill(99, 66, 66);
  ellipse(xPoint + 25, yPoint+21, 24, 24);
  ellipse(xPoint + 75, yPoint+21, 24, 24);

}

drawCar1 = function(var xPoint){
  // draw the car body
  fill(255, 200, 115);
  rect(xPoint, 200, 100, 20);
  rect(xPoint + 15, 178, 70, 40);


  // draw the wheels
  fill(77, 66, 66);
  ellipse(xPoint + 25, 221, 24, 24);
  ellipse(xPoint + 75, 221, 24, 24);

}
drawCar2 = function(var xPoint, var yPoint){
  // draw the car body
  fill(255, 100, 65);
  rect(xPoint, yPoint, 100, 20);
  rect(xPoint + 15, yPoint-22, 70, 40);

  // draw the wheels
  fill(77, 66, 66);
  ellipse(xPoint + 25, yPoint+21, 24, 24);
  ellipse(xPoint + 75, yPoint+21, 24, 24);
}
