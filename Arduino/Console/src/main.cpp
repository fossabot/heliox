#include <Arduino.h>
#include <Wire.h>

//I2C
const int SLAVE_ADDR = 9;

//Rotary Encoder
const int CLK_PIN = 6;
const int DATA_PIN = 5;
int prevPlus = 0;

//General
const int bjtCount = 4;
const int btnPin[bjtCount] = {7, 8, 9, 10};

byte btnState[bjtCount];
byte lastBtnState[bjtCount] = {HIGH, HIGH, HIGH, HIGH};

unsigned long lastDebounceTime[bjtCount] = {0, 0, 0, 0};
unsigned long debounceDelay = 50;

void setup()
{
    Serial.begin(9600);
    Wire.begin();

    pinMode(CLK_PIN, INPUT);
    pinMode(DATA_PIN, INPUT);

    for (int i = 0; i < bjtCount; i++)
    {
        pinMode(btnPin[i], INPUT_PULLUP);
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
    static uint16_t state = 0;

    delayMicroseconds(100);

    state = (state << 1) | digitalRead(CLK_PIN) | 0xe000;

    if (state == 0xf000)
    {
        state = 0x0000;
        if (digitalRead(DATA_PIN))
        {
            if (prevPlus == 1)
            {
                transmit("2i");
            }
            prevPlus = 1;
        }
        else
        {
            if (prevPlus == 0)
            {
                transmit("2d");
            }
            prevPlus = 0;
        }
    }
}
