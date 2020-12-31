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

void changeLights(String data)
{
  for (int i = 0; i < bjtCount; i++)
  {
    if (data.indexOf(String(i)) == 0) //changed to i2c for testing
    {
      if (data.indexOf("t") == 1) //changed to i2c for testing
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
      else if (data.indexOf("i") == 1)
      {
        bjtState[i] += 5;
      }
      else if (data.indexOf("d") == 1)
      {
        bjtState[i] -= 5;
      }
    }

    //clamp state between 0 and 255
    if (bjtState[i] > 255)
    {
      bjtState[i] = 255;
    }

    if (bjtState[i] < 0)
    {
      bjtState[i] = 0;
    }

    //set absolute state for all
    if (data == "off")
    {
      bjtState[i] = 0;
    }

    if (data == "on")
    {
      bjtState[i] = 255;
    }

    analogWrite(bjtPin[i], bjtState[i]);
    EEPROM.update(i, bjtState[i]);
  }

  receivedSerialData = "";
  receivedI2cData = "";
}

void receiveEvent(int byteCount)
{
  char buffer[byteCount];
  for (int i = 0; i < byteCount; i++)
  {
    buffer[i] = Wire.read();
  }
  receivedI2cData = String(buffer);

  changeLights(receivedI2cData);
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

void loop()
{
  while (Serial.available())
  {
    receivedSerialData = Serial.readString(); //FORMAT: index of light + t oggle, i ncrease, d ecrease -> eg. 0t
    Serial.flush();
  }

  changeLights(receivedSerialData);

  pendingSerialData = "";
  for (int i = 0; i < bjtCount; i++)
  {
    noInterrupts();
    pendingSerialData += String(bjtState[i]) + ",";
    interrupts();
  }
  Serial.println(pendingSerialData);
}