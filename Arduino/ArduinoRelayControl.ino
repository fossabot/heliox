#include <EEPROM.h>

const int relayCount = 4;

const int relayPin[relayCount] = {3, 4, 5, 6};
const int btnPin[relayCount] = {7, 8, 9, 10};
byte relayState[relayCount] = {HIGH, HIGH, HIGH, HIGH}; //high -> relay off

byte buttonState[relayCount];
byte lastButtonState[relayCount];

String receivedCom;
String sentStatus;

void setup()
{
    Serial.begin(9600);
    Serial.setTimeout(5);

    for (int i = 0; i < relayCount; i++)
    {
        pinMode(btnPin[i], INPUT_PULLUP);
        pinMode(relayPin[i], OUTPUT);
        relayState[i] = EEPROM.read(i);
        digitalWrite(relayPin[i], relayState[i]);
    }
}

void loop()
{
    while (Serial.available())
    {
        receivedCom = Serial.readString(); //FORMAT: 0123 -> toggles all | 12 -> toggles only relay 1 and 2
        Serial.flush();
    }

    for (int i = 0; i < relayCount; i++)
    {
        buttonState[i] = digitalRead(btnPin[i]);

        if ((buttonState[i] == LOW && buttonState[i] != lastButtonState[i]) || (receivedCom.indexOf(String(i)) >= 0))
        {
            receivedCom.replace(String(i), "");
            relayState[i] = !relayState[i];
        }

        if (receivedCom == "off")
        {
            relayState[i] = LOW;
        }

        if (receivedCom == "on")
        {
            relayState[i] = HIGH;
        }

        digitalWrite(relayPin[i], relayState[i]);
        EEPROM.update(i, relayState[i]);
        lastButtonState[i] = buttonState[i];
        sentStatus += relayState[i];
    }

    Serial.println(sentStatus);
    sentStatus = "";
    receivedCom = "";
}