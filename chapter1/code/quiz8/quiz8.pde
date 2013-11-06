/*
quiz 8:
- 在畫面上安排20x20個圓形
- 每個圓形的預設直徑都是一樣
- 根據滑鼠座標位置，動態調整每個圓形的直徑
- 離滑鼠越近的圓，該直徑越小
- 離滑鼠越遠的圓，該直徑便越大，但最大不會超過預設的直徑大小

*/

int xcount = 20;    //橫向的圓的個數
int ycount = 20;    //直向的圓的個數
float[][][] circle = new float[xcount][ycount][3];    //第一個維度：代表圓在橫向的位置
                                                      //第二個維度：代表圓在直向的位置
                                                      //第三個維度：代表該圓的x, y座標, 直徑


void setup(){
  size(300, 300);
  
  float dh = width/float(xcount);
  float dv = height/float(ycount);

  for(int i=0; i<xcount; i=i+1){
      for(int j=0; j<ycount; j=j+1){
          circle[i][j][0] = dh/2 + dh*i;    //圓心的x座標
          circle[i][j][1] = dv/2 + dv*j;    //圓心的y座標
          circle[i][j][2] = 30;      //圓的直徑
      }
  }
}

void draw(){
  background(255);
  

  noStroke();
  fill(255, 0, 0);
  for(int i=0; i<xcount; i=i+1){
      for(int j=0; j<ycount; j=j+1){
          //根據滑鼠座標來改變每個圓的直徑
          float d = circle[i][j][2] - map(dist(mouseX, mouseY, circle[i][j][0], circle[i][j][1]), 0, width, 30, 0);
    
          ellipse(circle[i][j][0], circle[i][j][1], d, d);
      }
  }
}
