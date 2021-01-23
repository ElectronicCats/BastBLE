#include <ArduinoBLE.h>
int x;
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
          Serial.println(F("ARM UP"));
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
          Serial.println(F("ARM DOWN"));
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
          Serial.println(F("BOW UP"));
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
          Serial.println(F("BOW DOWN"));
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
          Serial.println(F("BASE LEFT"));
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
          Serial.println(F("BASE RIGTH"));
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
      } 
    digitalWrite(8, LOW);
    Serial.print("Disconnected from central MAC: ");
    Serial.println(central.address());
}
