/*
quiz 4:
- 在畫面上畫7個正方形，每個大小都不同
- 由最小的正方形開始畫
- 第一個正方形的中心點位於畫面中心點的座標位置
- 下一個正方形的中心點位置為上一個正方形的左上角位置
- 每個正方形的旋轉角度都一樣，且旋轉角度隨著滑鼠的x座標改變
*/

int count = 7;
float d = 0;
float w = 10;

void setup(){
    size(300, 300);
}


void draw(){
    background(255);
    
    d = map(mouseX, 0, width, 0, 30);

    stroke(0);    
    noFill();

    pushMatrix();
    translate(width/2, height/2);

    for(int i=0; i<count; i=i+1){
        rotate(radians(d));
        translate(-w*(i+1)/2, -w*(i+1)/2);
        rect(0, 0, w*(i+1), w*(i+1));
    }

    popMatrix();
}
