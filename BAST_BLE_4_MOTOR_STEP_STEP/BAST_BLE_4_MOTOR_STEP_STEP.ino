#include <ArduinoBLE.h>

int x;
char dato;
static const char* greeting = "Hello World!";

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

BLEService greetingService("180C"); 
BLEStringCharacteristic greetingCharacteristic("2A56", BLERead, 13); 
BLEService ledService("19B10000-E8F2-537E-4F6C-D104768A1214");
BLEByteCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);

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
        if (switchCharacteristic.written()) {
      if (switchCharacteristic.value() == 'O' ) {   // any value other than 0
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
        } else if (switchCharacteristic.value() == 'C' ) {   // any value other than 0
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
        } else if (switchCharacteristic.value() == 'U' ) {                              // a 0 value
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
        }else if (switchCharacteristic.value() == 'D' ) {                              // a 0 value
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
        }else if (switchCharacteristic.value() == 'A' ) {                              // a 0 value
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
        }else if (switchCharacteristic.value() == 'B' ) {                              // a 0 value
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
        }else if (switchCharacteristic.value() == 'R' ) {                              // a 0 value
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
        }else if (switchCharacteristic.value() == 'L' ) {                              // a 0 value
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
    digitalWrite(8, LOW);
    Serial.print("Disconnected from central MAC: ");
    Serial.println(central.address());
}
