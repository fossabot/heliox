import serial
import time
ser = serial.Serial("COM5")
ser.write(b'r')
ser.close()
time.sleep(1)