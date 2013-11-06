/*
quiz 7:
- 隨機產生三個紅色圓形
- 當滑鼠移至圓形的內部時，該圓形的顏色即改變
- 當滑鼠不在圓形的內部時，該圓形即恢復原本的顏色

*/

int count = 3;
float[][] circle = new float[count][3];

void setup(){
    size(300, 300);
    
    for(int i=0; i<count; i=i+1){
        circle[i][0] = random(width);    //x
        circle[i][1] = random(height);   //y
        circle[i][2] = random(30, 50);   //diameter
    }
}

void draw(){
    background(255);
    
    for(int i=0; i<count; i=i+1){
        if(dist(mouseX, mouseY, circle[i][0], circle[i][1]) < circle[i][2]/2){
            fill(0, 255, 0);
        }else{
            fill(255, 0, 0);
        }
        
        stroke(0);
        ellipse(circle[i][0], circle[i][1], circle[i][2], circle[i][2]);
    }
}

