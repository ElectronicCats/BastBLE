int a[200];
int b;
int c;
#include <ArduinoBLE.h>
int x;
int y;
static const char* greeting = "Hello World!";
BLEService greetingService("180C"); 
BLEStringCharacteristic greetingCharacteristic("2A56", BLERead, 13); 
int dato;
BLEService ledService("19B10000-E8F2-537E-4F6C-D104768A1214");
BLEByteCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);

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
  while (!Serial);
  Serial.begin(115200);
  for (x = 2; x <= 13; x++) {
    pinMode(x, OUTPUT);
  }
  for (x = 15; x <= 18; x++) {
    pinMode(x, OUTPUT);
  }
  if (!BLE.begin()) {   
    Serial.println("starting BLE failed!");
    while (1);
  }
 BLE.setLocalName("bast ble ec");  
  BLE.setAdvertisedService(greetingService); 
  greetingService.addCharacteristic(greetingCharacteristic);
  BLE.addService(greetingService);
  greetingCharacteristic.setValue(greeting);
  Serial.print("Peripheral device MAC: ");
  Serial.println(BLE.address());
  Serial.println("esperando coneccion...");

BLE.setAdvertisedService(ledService);
ledService.addCharacteristic(switchCharacteristic);
  BLE.addService(ledService);
  BLE.advertise(); 
  switchCharacteristic.writeValue(0);
}

void loop() {
  BLEDevice central = BLE.central();  
  if (central) {
    Serial.print("Connected to central MAC: ");
    }
    Serial.println(central.address());
    digitalWrite(8, HIGH);
    while (central.connected()){
      if (y == 0){
        if (switchCharacteristic.written()) {
      if (switchCharacteristic.value() == 'O' ) {   // any value other than 0
          Serial.println("GRIPER OPEN"); 
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(15, paso[i][0]);
          digitalWrite(16, paso[i][1]);
          digitalWrite(17, paso[i][2]);
          digitalWrite(18, paso[i][3]);
          delay(5);
        }
      }
        } else if (switchCharacteristic.value() == 'C' ) {   // any value other than 0
      Serial.println("GRIPER CLOCED");
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(15, paso[i][0]);
          digitalWrite(16, paso[i][1]);
          digitalWrite(17, paso[i][2]);
          digitalWrite(18, paso[i][3]);
          delay(5);
        }
      }
        } else if (switchCharacteristic.value() == 'U' ) {                              // a 0 value
          Serial.println("ARM UP");
     for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(2, paso2[i][0]);
          digitalWrite(3, paso2[i][1]);
          digitalWrite(5, paso2[i][2]);
          digitalWrite(6, paso2[i][3]);
          delay(5);
        }
      }

        }else if (switchCharacteristic.value() == 'D' ) {                              // a 0 value
          Serial.println("ARM DOWN");
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(2, paso2[i][0]);
          digitalWrite(3, paso2[i][1]);
          digitalWrite(5, paso2[i][2]);
          digitalWrite(6, paso2[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'A' ) {                              // a 0 value
          Serial.println("BOW UP");
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(10, paso3[i][0]);
          digitalWrite(11, paso3[i][1]);
          digitalWrite(12, paso3[i][2]);
          digitalWrite(13, paso3[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'B' ) {                              // a 0 value
          Serial.println("BOW DOWN");
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(10, paso3[i][0]);
          digitalWrite(11, paso3[i][1]);
          digitalWrite(12, paso3[i][2]);
          digitalWrite(13, paso3[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'L' ) {                              // a 0 value
          Serial.println("BASE LEFT");
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(19, paso4[i][0]);
          digitalWrite(20, paso4[i][1]);
          digitalWrite(4, paso4[i][2]);
          digitalWrite(7, paso4[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'R' ) {                              // a 0 value
          Serial.println("BASE RIGTH");
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(19, paso4[i][0]);
          digitalWrite(20, paso4[i][1]);
          digitalWrite(4, paso4[i][2]);
          digitalWrite(7, paso4[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'G' ) {
          // a 0 value
          y = 1;
          b = 0;
          Serial.println(F("RECORDING MOVIMENTS"));
        }else if (switchCharacteristic.value() == 'P' ) {
          // a 0 value
          y = 2;
          b = 0;
          Serial.println("RECORDING MOVIMENTS");
        }
      }
    }
    if (y == 1) {
         if (switchCharacteristic.written()) {
      if (switchCharacteristic.value() == 'O' ) {   // any value other than 0
          Serial.println("GRIPER OPEN");
          a[b] = 'O';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(15, paso[i][0]);
          digitalWrite(16, paso[i][1]);
          digitalWrite(17, paso[i][2]);
          digitalWrite(18, paso[i][3]);
          delay(5);
        }
      }
        } else if (switchCharacteristic.value() == 'C' ) {   // any value other than 0
         Serial.println("GRIPER CLOCE");
          a[b] = 'C';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(15, paso[i][0]);
          digitalWrite(16, paso[i][1]);
          digitalWrite(17, paso[i][2]);
          digitalWrite(18, paso[i][3]);
          delay(5);
        }
      }
        } else if (switchCharacteristic.value() == 'U' ) {                              // a 0 value
          Serial.println("ARM UP");
          a[b] = 'U';
          b++;
     for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(2, paso2[i][0]);
          digitalWrite(3, paso2[i][1]);
          digitalWrite(5, paso2[i][2]);
          digitalWrite(6, paso2[i][3]);
          delay(5);
        }
      }

        }else if (switchCharacteristic.value() == 'D' ) {                              // a 0 value
          Serial.println("ARM DOWN");
          a[b] = 'D';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(2, paso2[i][0]);
          digitalWrite(3, paso2[i][1]);
          digitalWrite(5, paso2[i][2]);
          digitalWrite(6, paso2[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'A' ) {                              // a 0 value
          Serial.println("BOW UP");
          a[b] = 'A';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(10, paso3[i][0]);
          digitalWrite(11, paso3[i][1]);
          digitalWrite(12, paso3[i][2]);
          digitalWrite(13, paso3[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'B' ) {                              // a 0 value
          Serial.println("BOW DOWN");
          a[b] = 'B';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(10, paso3[i][0]);
          digitalWrite(11, paso3[i][1]);
          digitalWrite(12, paso3[i][2]);
          digitalWrite(13, paso3[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'L' ) {                              // a 0 value
          Serial.println("BASE LEFT");
          a[b] = 'L';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 0; i < 4; i++)
        {
          digitalWrite(19, paso4[i][0]);
          digitalWrite(20, paso4[i][1]);
          digitalWrite(4, paso4[i][2]);
          digitalWrite(7, paso4[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'R' ) {                              // a 0 value
          Serial.println("BASE RIGTH");
          a[b] = 'R';
          b++;
      for (x = 0; x < 15; x++) {
        for (int i = 3; i >= 0; i--)
        {
          digitalWrite(19, paso4[i][0]);
          digitalWrite(20, paso4[i][1]);
          digitalWrite(4, paso4[i][2]);
          digitalWrite(7, paso4[i][3]);
          delay(5);
        }
      }
        }else if (switchCharacteristic.value() == 'S' ) {
          // a 0 value
          c = b-1;
          y = 0;
          Serial.println(F("RECORDING MOVIMENTS"));
        }
      }     
      }
      if (y ==2 ){
        for (b=0; b<=c;b++)
        {
          a[b];
          if (a[b]== 'O' ){
              for (x = 0; x < 15; x++) {
                for (int i = 0; i < 4; i++)
                {
                  digitalWrite(15, paso[i][0]);
                  digitalWrite(16, paso[i][1]);
                  digitalWrite(17, paso[i][2]);
                  digitalWrite(18, paso[i][3]);
                  delay(5);
                }
              }            
            }
          if (a[b]== 'C' ){
               for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(15, paso[i][0]);
                  digitalWrite(16, paso[i][1]);
                  digitalWrite(17, paso[i][2]);
                  digitalWrite(18, paso[i][3]);
                  delay(5);
                }
              }           
            }
          if (a[b]== 'U' ){
               for (x = 0; x < 15; x++) {
                  for (int i = 0; i < 4; i++)
                  {
                    digitalWrite(2, paso2[i][0]);
                    digitalWrite(3, paso2[i][1]);
                    digitalWrite(5, paso2[i][2]);
                    digitalWrite(6, paso2[i][3]);
                    delay(5);
                  }
                }            
            }
          if (a[b]== 'D' ){
                for (x = 0; x < 15; x++) {
                  for (int i = 3; i >= 0; i--)
                  {
                    digitalWrite(2, paso2[i][0]);
                    digitalWrite(3, paso2[i][1]);
                    digitalWrite(5, paso2[i][2]);
                    digitalWrite(6, paso2[i][3]);
                    delay(5);
                  }
                }            
            }
          if (a[b]== 'A' ){
              for (x = 0; x < 15; x++) {
                for (int i = 0; i < 4; i++)
                {
                  digitalWrite(10, paso3[i][0]);
                  digitalWrite(11, paso3[i][1]);
                  digitalWrite(12, paso3[i][2]);
                  digitalWrite(13, paso3[i][3]);
                  delay(5);
                }
              }            
            }
          if (a[b]== 'B' ){
              for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(10, paso3[i][0]);
                  digitalWrite(11, paso3[i][1]);
                  digitalWrite(12, paso3[i][2]);
                  digitalWrite(13, paso3[i][3]);
                  delay(5);
                }
              }            
            }
          if (a[b]== 'L' ){
              for (x = 0; x < 15; x++) {
                for (int i = 0; i < 4; i++)
                {
                  digitalWrite(19, paso4[i][0]);
                  digitalWrite(20, paso4[i][1]);
                  digitalWrite(4, paso4[i][2]);
                  digitalWrite(7, paso4[i][3]);
                  delay(5);
                }
              }            
            }
          if (a[b]== 'R' ){
              for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(19, paso4[i][0]);
                  digitalWrite(20, paso4[i][1]);
                  digitalWrite(4, paso4[i][2]);
                  digitalWrite(7, paso4[i][3]);
                  delay(5);
                }
              }            
            }
          }
        for (b=c; b>=0;b--)
        {
          a[b];
          if (a[b]== 'O' ){
              for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(15, paso[i][0]);
                  digitalWrite(16, paso[i][1]);
                  digitalWrite(17, paso[i][2]);
                  digitalWrite(18, paso[i][3]);
                  delay(5);
                }
              }            
            }
          if (a[b]== 'C' ){
                  for (x = 0; x < 15; x++) {
                    for (int i = 0; i < 4; i++)
                    {
                      digitalWrite(15, paso[i][0]);
                      digitalWrite(16, paso[i][1]);
                      digitalWrite(17, paso[i][2]);
                      digitalWrite(18, paso[i][3]);
                      delay(5);
                    }
                  }            
            }
          if (a[b]== 'U' ){
              for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(2, paso2[i][0]);
                  digitalWrite(3, paso2[i][1]);
                  digitalWrite(5, paso2[i][2]);
                  digitalWrite(6, paso2[i][3]);
                  delay(5);
                }
              }      
            }
          if (a[b]== 'D' ){
               for (x = 0; x < 15; x++) {
                  for (int i = 0; i < 4; i++)
                  {
                    digitalWrite(2, paso2[i][0]);
                    digitalWrite(3, paso2[i][1]);
                    digitalWrite(5, paso2[i][2]);
                    digitalWrite(6, paso2[i][3]);
                    delay(5);
                  }
                }            
            }
          if (a[b]== 'A' ){
               for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(10, paso3[i][0]);
                  digitalWrite(11, paso3[i][1]);
                  digitalWrite(12, paso3[i][2]);
                  digitalWrite(13, paso3[i][3]);
                  delay(5);
                }
              }           
            }
          if (a[b]== 'B' ){
               for (x = 0; x < 15; x++) {
                for (int i = 0; i < 4; i++)
                {
                  digitalWrite(10, paso3[i][0]);
                  digitalWrite(11, paso3[i][1]);
                  digitalWrite(12, paso3[i][2]);
                  digitalWrite(13, paso3[i][3]);
                  delay(5);
                }
              }           
            }
          if (a[b]== 'L' ){
              for (x = 0; x < 15; x++) {
                for (int i = 3; i >= 0; i--)
                {
                  digitalWrite(19, paso4[i][0]);
                  digitalWrite(20, paso4[i][1]);
                  digitalWrite(4, paso4[i][2]);
                  digitalWrite(7, paso4[i][3]);
                  delay(5);
                }
              }            
            }
          if (a[b]== 'R' ){
                for (x = 0; x < 15; x++) {
                  for (int i = 0; i < 4; i++)
                  {
                    digitalWrite(19, paso4[i][0]);
                    digitalWrite(20, paso4[i][1]);
                    digitalWrite(4, paso4[i][2]);
                    digitalWrite(7, paso4[i][3]);
                    delay(5);
                  }
                }            

      if (switchCharacteristic.written()) {
      if (switchCharacteristic.value() == 'S' ) {
        y=0;
        b=0;
        }
      }
      
      }
          }
        }
      } 
    digitalWrite(8, LOW);
    Serial.print("Disconnected from central MAC: ");
    Serial.println(central.address());
}
