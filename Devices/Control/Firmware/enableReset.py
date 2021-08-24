import serial
import time
import sys

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

if len(sys.argv) == 1:
    print(f"{bcolors.FAIL}Please enter COM Port as argument{bcolors.ENDC}")

else:
    ser = serial.Serial(sys.argv[1])
    ser.write(b'r')
    ser.close()
    print(f"{bcolors.OKGREEN}Reset enabled{bcolors.ENDC}")
    time.sleep(1)
