PImage bgImg;//背景
PImage soilImg;//土
PImage lifeImg;//生命
PImage soldierImg;//士兵
PImage robotImg;//機器人
int x =0;//起始
int lightPos = 240+25;//光位置，+25--與機器人位置
PImage groundhog;//土撥鼠

void setup(){
    size(640, 480, P2D);//畫面大小
    // Enter Your Setup Code Here
   bgImg = loadImage("img/bg.jpg");//設定背景圖片
   soilImg = loadImage("img/soil.png");//設定土圖片
   lifeImg= loadImage("img/life.png");//設定生命圖片
   soldierImg = loadImage("img/soldier.png");//設定士兵圖片
   robotImg = loadImage("img/robot.png");//設定機器人圖片
   groundhog = loadImage("img/groundhog.png");//設定土撥鼠圖片
   
}

void draw() {
 
  image(bgImg,0,0);//背景位置
  strokeWeight(15.0);//草地
  stroke(124,204,25);//草地顏色
  line(0,152.5,640,152.5);//草地位置
  strokeWeight(5);//太陽外框粗細
  stroke(255, 255, 0);//外框顏色
  fill(253, 184, 19);//內圈顏色
  circle(590,50,120);//太陽位置
  image(soilImg, 0,160);//土位置
  image(lifeImg,10,10);//生命位置(左)
  image(lifeImg,80,10);//生命位置(中)
  image(lifeImg,150,10);//生命位置(右)
  image(soldierImg, x, 160);//士兵位置，移動
  image(robotImg, 240, 240); //機器人位置
  image(groundhog,280,80);//土撥鼠位置
  strokeWeight(10.0);//光粗細
  strokeCap(ROUND);
  stroke(255,0,0);//光顏色
  line(lightPos -40, 240+37, lightPos, 240+37);//光大小，+37--與地面距離
  lightPos=lightPos-2;
  x=x+2;//移動速度
  if ( x > 640)//移動超出右側
    x = -80;//回到左側-80

}
