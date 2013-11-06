/*
quiz 2:
- 在畫面上安排12個直條狀矩形, 每個矩形有不同灰階值
- 每個矩形有預設高度
- 當滑鼠移到某個矩形的上方時，該矩形的高度馬上變成滑鼠所在位置
- 滑鼠移開時，剛剛所在的矩形的高度便會慢慢地降回預設高度

*/

int count = 12;
float[] h = new float[count];


void setup(){
    size(300, 300);
    
    for(int i=0; i<count; i=i+1){
        h[i] = height-30;
    }
}

void draw(){
    background(255);
    
    float w = width/float(count);

    int index = int(mouseX/w);
    h[index] = mouseY;
    
    for(int i=0; i<count; i=i+1){
        noStroke();
        fill(150-i*10);
        rect(i*w, h[i], w, height-h[i]);
        
        if(h[i] < height-30){
            h[i] = h[i]*1.01;
        }else{
            h[i] = height-30;
        }
    }
}
