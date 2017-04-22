import logging
from sys import exit
from time import sleep

def main():
    """Run destructo for three minutes and then hard exit."""
    i = 0
    while True:
        logging.info("Still alive")
        sleep(1)
        i += 1
        if i == 180:
            exit(3)

if __name__ == "__main__":
    main()