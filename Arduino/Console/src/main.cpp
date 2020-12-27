#include <Arduino.h>
#include <Wire.h>

const int SLAVE_ADDR = 9;
const int CLK_PIN = 5;
const int DATA_PIN = 6;

//int prevPlus;
const int bjtCount = 4;
const int btnPin[bjtCount] = {7, 8, 9, 10};

byte btnState[bjtCount];
byte lastbtnState[bjtCount];

void setup()
{
    pinMode(CLK_PIN, INPUT);
    pinMode(DATA_PIN, INPUT);
    Serial.begin(9600);
    Wire.begin();

    for (int i = 0; i < bjtCount; i++)
    {
        pinMode(btnPin[i], INPUT_PULLUP);
    }
}

void transmit(String plus)
{
    Wire.beginTransmission(SLAVE_ADDR);
    Wire.write(plus.c_str(), 2);
    Serial.println(plus.c_str());
    Wire.endTransmission();
}

void loop()
{
    // static uint16_t state = 0;

    // delayMicroseconds(100);

    // state = (state << 1) | digitalRead(CLK_PIN) | 0xe000;

    // if (state == 0xf000)
    // {
    //     state = 0x0000;
    //     if (digitalRead(DATA_PIN))
    //     {
    //         if (prevPlus == 1)
    //         {
    //             Serial.println("+");
    //             transmit(1);
    //         }
    //         prevPlus = 1;
    //     }
    //     else
    //     {
    //         if (prevPlus == 0)
    //         {
    //             Serial.println("-");
    //             transmit(0);
    //         }
    //         prevPlus = 0;
    //     }
    // }

    for (int i = 0; i < bjtCount; i++)
    {
        btnState[i] = digitalRead(btnPin[i]);

        if ((btnState[i] == LOW && btnState[i] != lastbtnState[i]))
        {
            transmit(String(i) + "t");
        }

        lastbtnState[i] = btnState[i];
    }
}
