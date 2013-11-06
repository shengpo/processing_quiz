/*
quiz 5:
- 任意地載入一張圖片, 並將圖片縮放成跟畫布一樣大小
- 製作一個a x b大小的網格，a為x軸方向的格子數量, b為y軸方向的格子數量
- 網格中，每個格子的顏色來自於該格子的中心點座標對應至圖片上相同座標點的顏色
- 根據滑鼠的座標，可以動態改變x軸方向的格子數量，以及y軸方向的格子數量
*/


PImage img;
int xcount = 10;
int ycount = 5;


void setup(){
    size(300, 150);
    
    img = loadImage("angrybirds.jpg");
    img.resize(width, height);
}


void draw(){
    background(0);
//    image(img, 0, 0);

    xcount = (int)map(mouseX, 0, width, 1, 100);
    ycount = (int)map(mouseY, 0, height, 1, 50);


    float xspand = width/float(xcount);
    float yspand = height/float(ycount);
    
    for(int i=0; i<xcount; i=i+1){
        for(int j=0; j<ycount; j=j+1){
            float x = xspand/2 + xspand*i;
            float y = yspand/2 + yspand*j;
            
            noStroke();
            fill(img.get(int(x), int(y)));
            rect(x-xspand/2, y-yspand/2, xspand, yspand);
        }
    }
}
