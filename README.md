# LoKiPAD
A low cost adafruit macropad clone with integrated todbot [MacroPadSynthPlug!](https://github.com/todbot/macropadsynthplug) Partslist is kept minimal and some things were dropped. Generic 12mm SMD buttons, 3535 WS2812B LEDs, an OLED module and a Raspberry PI Pico. Check the ibom file for more info. 

## Code
Chose the Adafruit MacroPad RP2040 to compile the Arduino examples from todbot, mainl so the SPI pins check out. For pinout ou have to (re)define some pins, so the oled works. There might be an issue with the encoder, if it feels backwards, just swap the PIN_ROTA and PIN_ROTB definition.

I haven't really done much, just because I saw Todbots code and that was also the reason why I made this.

```c
#define PIN_NEOPIXEL 19
#define PIN_ROTA 18
#define PIN_ROTB 17
#define OLED_DC  14
#define OLED_RST 15
#define OLED_CS  22
```

---

![Picture of a 12 button macropad with an OLED and a encoder knob](/assets/LoKiPAD.jpg)