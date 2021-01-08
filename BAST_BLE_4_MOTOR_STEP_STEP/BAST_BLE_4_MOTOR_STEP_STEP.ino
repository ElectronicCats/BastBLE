int x;
char dato;
//pines de griper 
#define IN1  15
#define IN2  16
#define IN3  17
#define IN4  18
//pines de brazo 
#define IN5  2
#define IN6  3
#define IN7  5
#define IN8  6
//pines de codo 
#define IN9  10
#define IN10 11
#define IN11 12
#define IN12 13
//pines de base 
#define IN13 19
#define IN14 20
#define IN15 4
#define IN16 7

int paso [4][4] =
{
  {1, 1, 0, 0},
  {0, 1, 1, 0},
  {0, 0, 1, 1},
  {1, 0, 0, 1}
};

int paso2 [4][4] =
{
  {1, 1, 0, 0},
  {0, 1, 1, 0},
  {0, 0, 1, 1},
  {1, 0, 0, 1}
};
int paso3 [4][4] =
{
  {1, 1, 0, 0},
  {0, 1, 1, 0},
  {0, 0, 1, 1},
  {1, 0, 0, 1}
};
int paso4 [4][4] =
{
  {1, 1, 0, 0},
  {0, 1, 1, 0},
  {0, 0, 1, 1},
  {1, 0, 0, 1}
};
void setup() {
  // put your setup code here, to run once:
  for (x = 2; x <= 13; x++) {
    pinMode(x, OUTPUT);
  }
  for (x = 15; x <= 18; x++) {
    pinMode(x, OUTPUT);
  }   
  Serial.begin(115200);
  while(!Serial);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    dato = Serial.read();
    if (dato == 'O' ) {
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(IN1, paso[i][0]);
          digitalWrite(IN2, paso[i][1]);
          digitalWrite(IN3, paso[i][2]);
          digitalWrite(IN4, paso[i][3]);
          delay(5);
        }
      }
      Serial.println(" GRIPER aumento");
    }
    if (dato == 'C') {
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(IN1, paso[i][0]);
          digitalWrite(IN2, paso[i][1]);
          digitalWrite(IN3, paso[i][2]);
          digitalWrite(IN4, paso[i][3]);
          delay(5);
        }
      }
      Serial.println("GIRPER decremento");
    }
    if (dato == 'U') {
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(IN5, paso2[i][0]);
          digitalWrite(IN6, paso2[i][1]);
          digitalWrite(IN7, paso2[i][2]);
          digitalWrite(IN8, paso2[i][3]);
          delay(5);
        }
      }
      Serial.println("BRAZO aumento");
    }
    if (dato == 'D') {
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(IN5, paso2[i][0]);
          digitalWrite(IN6, paso2[i][1]);
          digitalWrite(IN7, paso2[i][2]);
          digitalWrite(IN8, paso2[i][3]);
          delay(5);
        }
      }
      Serial.println("BRAZO decremento");
    }
    if (dato == 'A') {
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(IN9, paso3[i][0]);
          digitalWrite(IN10, paso3[i][1]);
          digitalWrite(IN11, paso3[i][2]);
          digitalWrite(IN12, paso3[i][3]);
          delay(5);
        }
      }
      Serial.println("CODO aumento");
    }
    if (dato == 'B') {
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(IN9, paso3[i][0]);
          digitalWrite(IN10, paso3[i][1]);
          digitalWrite(IN11, paso3[i][2]);
          digitalWrite(IN12, paso3[i][3]);
          delay(5);
        }
      }
      Serial.println("CODO decremento");
    }
    if (dato == 'R') {
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(IN13, paso4[i][0]);
          digitalWrite(IN14, paso4[i][1]);
          digitalWrite(IN15, paso4[i][2]);
          digitalWrite(IN16, paso4[i][3]);
          delay(5);
        }
      }
      Serial.println("BASE aumento");
    }
    if (dato == 'L') {
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(IN13, paso4[i][0]);
          digitalWrite(IN14, paso4[i][1]);
          digitalWrite(IN15, paso4[i][2]);
          digitalWrite(IN16, paso4[i][3]);
          delay(5);
        }
      }
      Serial.println("BASE decremento");
    }    
  }
}
