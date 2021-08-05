#include <Arduino.h>
#include <Wire.h>

//General
const int bjtCount = 4;
const int btnPin[bjtCount] = {7, 8, 9, 10};

byte btnState[bjtCount];
byte lastBtnState[bjtCount] = {HIGH, HIGH, HIGH, HIGH};

unsigned long lastDebounceTime[bjtCount] = {0, 0, 0, 0};
unsigned long debounceDelay = 50;

//I2C
const int SLAVE_ADDR = 9;

//Rotary Encoder
const int encClkPin[1] = {6};
const int encDtPin[1] = {5};

void setup()
{
    Serial.begin(9600);
    Wire.begin();

    for (int i = 0; i < bjtCount; i++)
    {
        pinMode(btnPin[i], INPUT_PULLUP);
        pinMode(encClkPin[i], INPUT_PULLUP);
        pinMode(encDtPin[i], INPUT_PULLUP);
    }
}

void transmit(String data)
{
    Wire.beginTransmission(SLAVE_ADDR);
    Wire.write(data.c_str(), 2);
    Serial.println(data.c_str());
    Wire.endTransmission();
}

void loop()
{
    //Buttons
    byte btnReading[bjtCount];

    for (int i = 0; i < bjtCount; i++)
    {
        btnReading[i] = digitalRead(btnPin[i]);

        if (btnReading[i] != lastBtnState[i])
        {
            lastDebounceTime[i] = millis();
        }

        if ((millis() - lastDebounceTime[i]) > debounceDelay)
        {
            if (btnReading[i] != btnState[i])
            {
                btnState[i] = btnReading[i];

                if (btnState[i] == LOW)
                {
                    transmit(String(i) + "t");
                }
            }
        }

        lastBtnState[i] = btnReading[i];
    }

    //Rotary Encoder
    static uint16_t state[1] = {0};

    //delayMicroseconds(100); // Simulate doing somehing else as well.

    for (int i = 0; i < 1; i++)
    {
        state[i] = (state[i] << 1) | digitalRead(encClkPin[i]) | 0xe000;

        if (state[i] == 0xf000)
        {
            state[i] = 0x0000;
            if (digitalRead(encDtPin[i]))
                //transmit(String(i) + "i");
                transmit("2i");
            else
                //transmit(String(i) + "d");
                transmit("2d");
        }
    }
}
