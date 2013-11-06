/*
quiz 1:
- 在畫面上任意處產生一個圓
- 該圓會往任意方向移動
- 當該圓的圓周碰到畫面邊境時，便改變移動方向，同時也改變移動速度

*/

float[] pos = new float[2];
float[] dir = new float[2];
float d = 50;
float[] speed = new float[2];

void setup(){
    size(300, 300);
    
    pos[0] = random(width);
    pos[1] = random(height);
    
    if(random(2) < 1){
        dir[0] = 1;
    }else{
        dir[0] = -1;
    }
    if(random(2) < 1){
        dir[1] = 1;
    }else{
        dir[1] = -1;
    }
    
    speed[0] = random(1, 5);
    speed[1] = random(1, 5);
}

void draw(){
    background(255);
    
    pos[0] = pos[0] + dir[0]*speed[0];
    pos[1] = pos[1] + dir[1]*speed[1];

    noStroke();
    fill(255, 0, 0);
    ellipse(pos[0], pos[1], d, d);
    
    if(pos[0]-d/2<=0){
        pos[0] = d/2;
        dir[0] = -dir[0];
        speed[0] = random(1, 5);
    }else if(pos[0]+d/2>=width){
        pos[0] = width-d/2;
        dir[0] = -dir[0];
        speed[0] = random(1, 5);
    }

    if(pos[1]-d/2<=0){
        pos[1] = d/2;
        dir[1] = -dir[1];
        speed[1] = random(1, 5);
    }else if(pos[1]+d/2>=height){
        pos[1] = height-d/2;
        dir[1] = -dir[1];
        speed[1] = random(1, 5);
    }
}
