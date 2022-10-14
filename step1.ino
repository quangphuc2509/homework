int x =0; //số xung cấp cho step1
int y = 0; //số xung cấp cho step2
int en = 8 ; 
int stepX = 2 ; 
int dirX = 5 ;
int stepY = 3;
int dirY = 6
int n = 0; // số vòng quay
int stepPerRevolution = 400; //thay doi tuong ưng voi cac che do chay full step, half step, microstep

void setup() 
{
  Serial.begin(9600);
  pinMode(en,OUTPUT);
  pinMode(dirX,OUTPUT);
  pinMode(stepX,OUTPUT);
  digitalWrite(en,LOW);
}

void loop() 
{
  Serial.print("Nhap so vong quay: ");
  while(Serial.available()==0){}
  n = Serial.parseInt();
  Serial.println(n);
  
  x=n*stepPerRevolution;
  digitalWrite(dirX,HIGH);
  for (int i = 0; i<=x; i++)
  {
    digitalWrite(stepX,HIGH);
    delay(100);
    digitalWrite(stepX,LOW);
    delay(100);
  }
  delay(2000);

  y=n*stepPerRevolution;
  digitalWrite(dirX,LOW);
  for (int i = 0; i<=y; i++)
  {
    digitalWrite(stepY,HIGH);
    delay(100);
    digitalWrite(stepY,LOW);
    delay(100);
  }
  delay(2000);

}
