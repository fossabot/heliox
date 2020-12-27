#include <Arduino.h>
#include <EEPROM.h>
#include <Wire.h>

#define SLAVE_ADDR 9
const int bjtCount = 4;

const int bjtPin[bjtCount] = {6, 5, 3, 10};
int bjtState[bjtCount] = {255, 255, 255, 255}; //255 -> bjt max "open"

String receivedSerialData;
String pendingSerialData;
String receivedI2cData;

void receiveEvent(int howMany)
{
  char buff[howMany];
  for (int i = 0; i < howMany; i++)
  {
    buff[i] = Wire.read();
  }
  receivedI2cData = String(buff);
}

void setup()
{
  Serial.begin(9600);
  Serial.setTimeout(5);
  Wire.begin(SLAVE_ADDR);
  Wire.onReceive(receiveEvent);

  for (int i = 0; i < bjtCount; i++)
  {
    pinMode(bjtPin[i], OUTPUT);
    bjtState[i] = EEPROM.read(i);
    digitalWrite(bjtPin[i], bjtState[i]);
  }
}

void toggleLED(int i)
{
  if (bjtState[i] != 0)
  {
    bjtState[i] = 0;
  }
  else
  {
    bjtState[i] = 255;
  }
}

void absoluteLED(String data, int i)
{
  if (data == "off")
  {
    bjtState[i] = 0;
  }

  if (data == "on")
  {
    bjtState[i] = 255;
  }
}

void loop()
{
  while (Serial.available())
  {
    receivedSerialData = Serial.readString(); //FORMAT: index of light + t oggle, i ncrease, d ecrease -> eg. 0t
    Serial.flush();
    Serial.println("cum");
  }

  for (int i = 0; i < bjtCount; i++)
  {
    if ((receivedI2cData.indexOf(String(i)) == 0)) //changed to i2c for testing
    {
      if (receivedI2cData.indexOf("t") >= 0) //changed to i2c for testing
      {
        toggleLED(i);
      }
      else if (receivedSerialData.indexOf("i") >= 0)
      {
        bjtState[i] += 5;
      }
      else if (receivedSerialData.indexOf("d") >= 0)
      {
        bjtState[i] -= 5;
      }
    }

    absoluteLED(receivedSerialData, i);

    //clamp state between 0 and 255 if (bjtState[i] > 255)
    {
      bjtState[i] = 255;
    }

    if (bjtState[i] < 0)
    {
      bjtState[i] = 0;
    }

    analogWrite(bjtPin[i], bjtState[i]);
    EEPROM.update(i, bjtState[i]);
    pendingSerialData += String(bjtState[i]) + ",";
  }

  Serial.println(pendingSerialData);
  pendingSerialData = "";
  receivedSerialData = "";
  receivedI2cData = "";
}