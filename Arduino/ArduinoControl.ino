#include <EEPROM.h>

const int bjtCount = 4;

const int bjtPin[bjtCount] = {6, 5, 3, 10};
const int btnPin[bjtCount] = {7, 8, 9, 4};
int bjtState[bjtCount] = {255, 255, 255, 255}; //255 -> bjt max "open"

byte btnState[bjtCount];
byte lastbtnState[bjtCount];
String receivedData;
String pendingData;

void setup()
{
    Serial.begin(9600);
    Serial.setTimeout(5);

    for (int i = 0; i < bjtCount; i++)
    {
        pinMode(btnPin[i], INPUT_PULLUP);
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
        receivedData = Serial.readString(); //FORMAT: index of light + t oggle, i ncrease, d ecrease -> eg. 0t
        Serial.flush();
    }

    for (int i = 0; i < bjtCount; i++)
    {
        btnState[i] = digitalRead(btnPin[i]);

        if ((btnState[i] == LOW && btnState[i] != lastbtnState[i]))
        {
            toggleLED(i);
        }

        if (receivedData.indexOf(String(i)) == 0 && receivedData.length() == 2)
        {
            if (receivedData.indexOf("t") >= 0)
            {
                toggleLED(i);
            }
            else if (receivedData.indexOf("i") >= 0)
            {
                bjtState[i] += 5;
            }
            else if (receivedData.indexOf("d") >= 0)
            {
                bjtState[i] -= 5;
            }
        }

        absoluteLED(receivedData, i);

        //clamp state between 0 and 255
        if (bjtState[i] > 255)
        {
            bjtState[i] = 255;
        }

        if (bjtState[i] < 0)
        {
            bjtState[i] = 0;
        }

        analogWrite(bjtPin[i], bjtState[i]);
        EEPROM.update(i, bjtState[i]);
        lastbtnState[i] = btnState[i];
        pendingData += String(bjtState[i]) + ",";
    }

    Serial.println(pendingData);
    pendingData = "";
    receivedData = "";
}