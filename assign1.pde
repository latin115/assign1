/* please implement your assign1 code in this file. */
PImage bg1,bg2,hp,treasure,fighter,enemy;
int bg1_x,bg2_x;
int treasure_x,treasure_y;
int enemy_x,enemy_y;
int blood;
void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  fighter = loadImage("img/fighter.png");
  enemy = loadImage("img/enemy.png");
  bg1_x=0;
  bg2_x=640;
  blood=floor(random(199));
  treasure_x=floor(random(500));
  treasure_y=floor(random(400));
  enemy_x=0;
  enemy_y=floor(random(400));
  
}

void draw() {
  // bg
  image(bg1,bg1_x,0);
  bg1_x-=1;
  if(bg1_x==-640)
    bg1_x=640;
  image(bg2,bg2_x,0);
  bg2_x-=1;
  if(bg2_x==-640)
    bg2_x=640;

  //hp
  fill(255,0,0);
  rect(10,5,blood,20);
  image(hp,0,0);
  
  //enemy
  image(enemy,enemy_x,enemy_y);
  enemy_x+=1;
  enemy_x%=640;
  
  //fighter
  image(fighter,519,240);
  
  //treasure
  image(treasure,treasure_x,treasure_y);
}
