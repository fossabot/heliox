#include <Arduino.h>
#include <SoftwareSerial.h>

SoftwareSerial mySerial(2, 3); // RX, TX

void setup()
{
  Serial.begin(9600);
  mySerial.begin(9600);
}

void loop()
{
  size_t bufferSize = 10;
  char buffer[bufferSize];
  if (mySerial.available())
  {
    memset(buffer, '\0', 10);
    mySerial.readBytesUntil('\n', buffer, bufferSize);
    Serial.println(buffer);
  }
}