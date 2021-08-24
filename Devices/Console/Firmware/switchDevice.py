import serial
import time
ser = serial.Serial("COM5")
ser.write(b's')
ser.close()
time.sleep(1)