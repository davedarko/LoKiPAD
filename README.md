# LoKiPAD
a low cost adafruit macropad clone with integrated todbot MacroPadSynthPlug.


#define PIN_NEOPIXEL 19
#define PIN_ROTA 18
#define PIN_ROTB 17
#define OLED_DC  14 
#define OLED_RST 15
#define OLED_CS  22

Chose the Adafruit MacroPad RP2040 to compile the Arduino examples from todbot, mainl so the SPI pins check out. For pinout ou have to (re)define some pins, so the oled works. 

```c
#define PIN_NEOPIXEL 19
#define PIN_ROTA 18
#define PIN_ROTB 17
#define OLED_DC  14
#define OLED_RST 15
#define OLED_CS  22
```

Todbots code [MacroPadSynthPlug!](https://github.com/todbot/macropadsynthplug)

![Picture of a 12 button macropad with an OLED and a encoder knob](/assets/LoKiPAD.jpg)