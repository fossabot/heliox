#include <Arduino.h>
#include <EEPROM.h>
#include <Wire.h>

#define SLAVE_ADDR 9
const int bjtCount = 4;

const int bjtPin[bjtCount] = {6, 5, 3, 10};
int bjtState[bjtCount] = {255, 255, 255, 255}; //255 -> bjt max "open"

char receivedSerialData[4];
char receivedI2cData[4];
String pendingSerialData;

void changeLights(char data[])
{
  for (int i = 0; i < bjtCount; i++)
  {
    char numChar[2];
    itoa(i, numChar, 10);

    if (data[0] == numChar[0])
    {
      if (data[1] == 't')
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
      else if (data[1] == 'i')
      {
        bjtState[i] += 5;
      }
      else if (data[1] == 'd')
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
    if (!strcmp(data, "off"))
    {
      bjtState[i] = 0;
    }

    if (!strcmp(data, "on"))
    {
      bjtState[i] = 255;
    }

    analogWrite(bjtPin[i], bjtState[i]);
    EEPROM.update(i, bjtState[i]);
  }

  memset(data, ' ', 3);
}

void receiveEvent(int byteCount)
{
  char buffer[byteCount];
  for (int i = 0; i < byteCount; i++)
  {
    buffer[i] = Wire.read();
  }
  memset(receivedI2cData, ' ', 3);
  strcpy(receivedI2cData, buffer);
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
    analogWrite(bjtPin[i], bjtState[i]);
  }
}

void loop()
{
  while (Serial.available())
  {
    strcpy(receivedSerialData, Serial.readString().c_str());
  }

  changeLights(receivedSerialData);
  changeLights(receivedI2cData);

  pendingSerialData = "";
  for (int i = 0; i < bjtCount; i++)
  {
    noInterrupts();
    pendingSerialData += String(bjtState[i]) + ",";
    interrupts();
  }
  pendingSerialData.remove(pendingSerialData.length() - 1);
  Serial.println(pendingSerialData);
}