#include <Arduino.h>

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  Serial.println("0t");
  delay(100);
  Serial.println("1i");
  delay(100);
}