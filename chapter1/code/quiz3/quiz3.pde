/*
quiz 3:
- 在畫面上畫12個正方形，每個大小都不同
- 每個正方形的中心點均位於畫面的中心點位置
- 每個正方形的旋轉角度均根據滑鼠的x座標位置變化
*/

int count = 12;
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
    for(int i=0; i<count; i=i+1){
        pushMatrix();
        translate(width/2, height/2);
        rotate(radians(d*(i+1)));
        translate(-w*(i+1)/2, -w*(i+1)/2);
        rect(0, 0, w*(i+1), w*(i+1));
        popMatrix();
    }
}
