package com.dylanneve1.flappyship;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class flappyShip extends PApplet {

Player p; //Import Player.
Modes m; //Import modes.
Obstacles o;

PImage background; //Create background PImage.
PImage ship; //Create ship PImage.

public void setup()
{
  ship = loadImage("ship.png");
  background = loadImage("nomnom.jpg"); //load background image.
  m = new Modes(); //Init imported modes.
  p = new Player(); //Init imported Player.
  o = new Obstacles();
   //Set game resolution based on screen.
  orientation(PORTRAIT); //Force portrait.
}

public void draw()
{
  m.caller(); //Call Player caller.
}

public void mousePressed() //If the mouse is pressed.
{
  p.bouncing = true; //Declare that ball is to bounce.
}
class Modes //This class is for switching between menu/game etc.
{
  boolean playing = true; //If player playing?

  public void caller()
  {
    if (playing == true)
    {
      game(); //If player is playing then call game mode.
    }
  }

  public void game() //Game mode.
  {
    imageMode(CORNER); //Set image mode to corner.
    image(background, 0, 0, displayWidth, displayHeight); //Draw background image.
    p.caller(); //Call player entity.
    o.caller();
  }
}
class Obstacles
{

  float leftEdge;
  float rightEdge;

  float x = displayWidth*1.5f;
  float topY = 0;

  float oWidth = displayWidth/5;
  float topoHeight = displayHeight/3;

  float botoHeight = displayHeight/3;

  float bottomY = displayHeight;

  public void caller()
  {
    show();
    slide();
    edgeDetect();
  }

  public void show()
  {
    fill(255);
    rect(x, topY, oWidth, topoHeight);
    fill(255, 0, 0);
    rect(x, bottomY, oWidth, botoHeight*-1);
  }

  public void slide()
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5f;
      topoHeight = random(0, displayHeight*0.8f);
      botoHeight = displayHeight - topoHeight - displayHeight*0.23f;
    }
  }

  public void edgeDetect()
  {
    leftEdge = x;
    rightEdge = x + oWidth;
  }
}
class Player //Init Player
{
  float x = displayWidth/4; //Player X based on screen.
  float y = displayHeight/3; //Player Y based on screen.

  float radius = displayWidth/8; //Player radius based on screen.

  float gravity = displayHeight/150; //Gravity pulling Player down based on screen.
  float bounce = displayHeight/50;
  boolean isBounce = false;
  boolean bouncing = false;

  public void caller() //Class that will be called in main, calls all other functions.
  {
    show(); //Call function that shows Player on screen.
    gravity(); //Calls funtion that adds gravity.
    reset();
    bounce(); //Let you stop the Player dying.
    restrict(); //Call restrict function.
  }

  public void show() //Shows the player on screen.
  {
    imageMode(CENTER);
    fill(0); //Make Player white.
    //ellipse(x, y, radius, radius); //Draw Player.
    image(ship, x, y, radius*1.5f, radius);
  }

  public void gravity() //Add gravity to Player.
  {
    if (isBounce == false)
    {
      y += gravity; //Pull player towards bottom of the screen.
    }
  }

  public void reset() //Just for my own testing.
  {
    if (y >= displayHeight)
    {
      y = displayHeight/2;
    }
  }

  public void bounce()
  {
    if (bouncing == true) //If Player is in bouncing state.
    {
      isBounce = true; //Declare Player is bouncing.
      y -= bounce; //Bounce is added to Y.
      bounce -= displayHeight/500; //Bounce speed is decreased over time.
      if (bounce <= 0) { //If the bounce arc is over.
        bouncing = false; //Player is no longer bouncing.
        isBounce = false; //Gravity resumes.
        bounce = displayHeight/50; //Reset bounce value for next time.
      }
    }
  }

  public void restrict() //Stop player going out of bounds.
  {
    if (y <= -1)
    {
      y = 0; //Y cannot be less than 0.
    }
  }
}
  public void settings() {  size(displayWidth, displayHeight, P2D); }
}
