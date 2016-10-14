noStroke();
size(500,500);
var Fish = function(x1,y1,r,g,b,w,h,speed){
    this.x1=x1;
    this.y1=y1;
    this.r=r;
    this.g=g;
    this.b=b;
    this.w=w;
    this.h=h;
    this.speed=speed;
    
    this.drawFish = function(){
        fill(r, g, b);
        ellipse( x1, y1, w, h);
        triangle(x1,y1,x1-w,y1-h/2,x1-w,y1+h/2);
        fill(41, 41, 41);
        ellipse(x1+18,y1-8,5,5);
    };
    
    this.moveFish = function(){
        if(x1>600){
            x1=-100;
            y1=random(0,400);
        }
        x1=x1+speed;
        y1=y1;
    };
};

var myList = [];
var numberOfFish = random(0,10);
for(var i=0; i<numberOfFish; i++){
    var newFish = new Fish( random(0,400), random(-10,410), random(0,255), random(0,255), random(0,255), random(90,140), random(25,70), random(1,4));
    append(myList,newFish);
}

draw = function() {
    background(110, 192, 255);
    for(var i=0; i<numberOfFish; i++){
        myList[i].drawFish();
        myList[i].moveFish();
    }
};