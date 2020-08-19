#include<Servo.h>                //Adding the Servo library; 2018-06-09 first testing for KyungSung class; Sae-han Lee made a great award for AI 2020, it could be another extended version from the class.


Servo myservo;            //Define an object named MyServo
const int eko=8;        
const int trig=7;        
int mesafe;
int sure;

void setup() {
  myservo.attach(9);           //We introduced the ninth pin arduino to the servo motor
  pinMode(trig,OUTPUT);        
  pinMode(eko,INPUT);          
}

void loop() {
  myservo.write(0);       
  Serial.begin(9600);      
   
  digitalWrite(trig, LOW);         
  delayMicroseconds(1000);
  digitalWrite(trig, HIGH);       
  delayMicroseconds(2000);
  digitalWrite(trig, LOW);         
  sure = pulseIn(eko, HIGH);      
  mesafe= (sure/29.1)/2;  
  

  if(mesafe<=5){
    myservo.write(160);
    delay(5000);   
  }  
   
  if(mesafe>200)
mesafe=200;
Serial.print("mesafe");
Serial.println(mesafe);
delay(500);
}
