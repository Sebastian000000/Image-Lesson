//Global Variable
//
//void setup() {}//End setup
//
//void draw() {}//End draw
//
//void keyPressed() {}//End keyPressed
//
//void mousePressed() {}//End mousePressed
//
//End MAIN Program
//Static to Copy
float imageX, imageY, imageWidth, imageHeight, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
//CANVAS
size (750, 500); //Landscape
//
//Population
pic = loadImage("Images Used/Landscape & Square Images/download.png"); //Dimensions: width 225, height 225
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
int picWidth = 225;
int picHeight = 225;
if ( picWidth >= picHeight ) { //Image Dimension Comparison
  //True if Landscape or Square
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
  widthLarger = true;
} else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;
  heightLarger = true;
}//End Image Dimension Comparison
println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
//
//Aspect Ratio
//Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
//Computer chooses which formulae to execute
if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
if ( widthLarger == true ) imageHeigthRatio = imageSmallerDimension / imageLargerDimension;
if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
if ( heightLarger == true ) imageHeigthRatio = imageLargerDimension / imageLargerDimension;
//Note:
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio of 0-1 similar to style="height:auto" (websites)
//
// CONTINUE HERE
//
//
//Note: println() also verifies decimal places, complier will truncate
//
imageX = width*0;
imageY = height*0;
imageWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
imageHeight = height-1;
//
rect(imageX, imageY, imageWidth, imageHeight); //Background image
image(pic, imageX, imageY, imageWidth, imageHeight);
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image();
