float fdata;

long int idata;

char* myString = "-0.123456789 ABCD";

char buffer[20];



void setup() {

  // initialize serial communications at 9600 bps:

  Serial.begin(9600); 

}



void loop() {

  

// Clear FND

  Serial.println(); // 개행코드(CR)는 FND를 클리어 합니다.

  delay(1000);


////////////////////////////////// CLOCK Data

// sprintf();는 형식 문자열(formated string)을 지원합니다.

// 표시 수가 5자리를 가지고 싶으면 "5d"를 지정합니다. 5 자리보다 작은 수는

// 원쪽에 공백문자(space)로 채워집니다. 공백대신 "0"이 채워지기 원하면

// "05d"를 지정합니다.

// 아래의 예는 시계의 시와 분을 표시하는 예입니다. 

// 시간과 분은 같은 2자리로 표시되지만

// 한자리의 시 표시에서 " "을, 한자리의 분 표시에서 "0"이 채워지게 됩니다.

int hour = 3;      // 

int minute = 5;    //

  sprintf(buffer,"t=%2d.%02d",hour, minute);

  Serial.println(buffer);

  delay(2500);



// 표시 가능한 Alpabet Character 

  Serial.println("ABCDEFGHLNOPQRST"); delay(1500);  

  Serial.println("UVY 9876543210."); delay(2500);

  

// 표시 가능한 특수문자(Special Character)

  Serial.println("@-[]=_*~/<>{}()"); delay(1500);

  Serial.println("`%#'^\t? "); delay(2500);

  Serial.println("------END-------"); delay(3500);  

  

}
