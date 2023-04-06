# LoKiPAD
A low cost adafruit [macropad](https://learn.adafruit.com/adafruit-macropad-rp2040/) clone with integrated todbot [MacroPadSynthPlug!](https://github.com/todbot/macropadsynthplug) Partslist is kept minimal and some things like the SD-card adapter, debug LED and speaker were dropped. Generic 12mm SMD buttons, 3535 WS2812B LEDs, an OLED module and a Raspberry PI Pico keep the price low. Check the ibom file for more info on the resistor and capacitor values. There's a small hack necessary so you don't have to remove the PCB from the case to push the BOOTSEL button - connect the pad with a jumper wire to a pin of the pico bootsel button.

## Code
Chose the Adafruit MacroPad RP2040 to compile the Arduino examples from todbot, so the SPI pins for the display are setup correctly. You also have to (re)define some pins to make the oled display and the LEDs work. There might be an issue with the encoder - if it feels backwards, just swap the PIN_ROTA and PIN_ROTB definition.

Since this is hardware to run todbots code, there's no code of my own to find here.

```c
#define PIN_NEOPIXEL 19
#define PIN_ROTA 18
#define PIN_ROTB 17
#define OLED_DC  14
#define OLED_RST 15
#define OLED_CS  22
```
## code of other people
This [MIDI controller code](https://gist.github.com/codeandmake/a2a5672fd49b748823cb352ba72d804a) by @codeandmake works great too, once you've changed the pin definition. 
---

![Picture of a 12 button macropad with an OLED and a encoder knob](/assets/LoKiPAD.jpg)
