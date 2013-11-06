/*
quiz 6:
- 隨機產生30個矩形 (大小，初始位置，顏色，移動速度均是隨機值)
- 每個矩形由上至下移動
- 當矩形完全移出畫面時，該矩形會再從上方"平順地"移入

*/

int count = 30;
float[][] rect = new float[count][5];
float[][] ccolor = new float[count][3];

void setup(){
    size(300, 300);
    
    for(int i=0; i<count; i=i+1){
        rect[i][0] = random(width);     //x
        rect[i][1] = random(height);    //y
        rect[i][2] = random(10, 20);    //w
        rect[i][3] = random(10, 50);    //h
        rect[i][4] = random(0.1, 2);    //speed
        
        ccolor[i][0] = random(256);    //red
        ccolor[i][1] = random(256);    //green
        ccolor[i][2] = random(256);    //blue
    }
}

void draw(){
    background(255);
    
    for(int i=0; i<count; i=i+1){
        update(i);
        show(i);
    }
}

void update(int index){
    rect[index][1] = rect[index][1] + rect[index][4];
    
    if(rect[index][1] >= height){
        rect[index][1] = -rect[index][3];
    }
}

void show(int index){
    stroke(0);
    fill(ccolor[index][0], ccolor[index][1], ccolor[index][2]);
    rect(rect[index][0], rect[index][1], rect[index][2], rect[index][3]);
}
