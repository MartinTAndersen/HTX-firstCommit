void setup() {
  size(1000,800);
}

float Xball = 400;
float Yball = 500;
float Rball = 12.5;
float Lpadle = 20;
float Hpadle = 200;
float Xpadle1 = 30;
float Ypadle1 = 800/2-Hpadle/2;
float Xpadle2 = width-Lpadle-30;
float Ypadle2 = 800/2-Hpadle/2;
int count1 = 0;
int count2 = 0;

//float x=50.0f;
float speedx=2.5f;//Fart vandret 
float speedy=2.5f;//Fart Lodret

void draw() {//Tegner cirkel 
  background(227);
  circle(Xball, Yball, 50);
  Xball=Xball+speedx;//Fart på cirklen
  Yball=Yball+speedy;
  //if(Xball > width || Xball < 0) { //Bounce på vandrette vægge 
    //speedx=speedx*-1;
    //speedy=speedy*-1;
  //}
  if(Yball > height || Yball < 0){ //Bounce på Lodrette vægge
    speedy=speedy*-1;
  }
  if ((Xball > width || Xball < 0)) { //resetter spillet og tegner en ny cirkle og starter spillet igen men det chrasher pt. idk why
   draw();
   
  background(227);
  fill(0);
  circle(Xball, Yball, 50);
  Xball=Xball+speedx;
  Yball=Yball+speedy;
  
  }
  }
