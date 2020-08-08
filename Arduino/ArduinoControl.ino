#include <EEPROM.h>

const int bjtCount = 4;

const int bjtPin[bjtCount] ={ 2, 3, 5, 6 };
const int btnPin[bjtCount] ={ 7, 8, 9, 10 };
byte bjtState[bjtCount] ={ HIGH, HIGH, HIGH, HIGH }; //high -> bjt "open"

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

void loop()
{
    while (Serial.available())
    {
        receivedData = Serial.readString(); //FORMAT: 0123 -> toggles all bjts | 12 -> toggles only bjts with the index 1 and 2
        Serial.flush();
    }

    for (int i = 0; i < bjtCount; i++)
    {
        btnState[i] = digitalRead(btnPin[i]);

        if ((btnState[i] == LOW && btnState[i] != lastbtnState[i]) || (receivedData.indexOf(String(i)) >= 0))
        {
            receivedData.replace(String(i), "");
            bjtState[i] = !bjtState[i];
        }

        if (receivedData == "off")
        {
            bjtState[i] = LOW;
        }

        if (receivedData == "on")
        {
            bjtState[i] = HIGH;
        }

        digitalWrite(bjtPin[i], bjtState[i]);
        EEPROM.update(i, bjtState[i]);
        lastbtnState[i] = btnState[i];
        pendingData += bjtState[i];
    }

    Serial.println(pendingData);
    pendingData = "";
    receivedData = "";
}