// This code counts rising edges of an input trigger (from camera or stage) 
// The input should be connected to Arduino's digital pin capable of Interrupt mode.
// The program switches analog output voltage setting after every N trigger pulses
// tested on Teensy 2.0, should work on Arduino, too.
// DAC chip MCP4725 wired via I2C. 
// Default speed of Arduino Wire library is 100KHz. The Adafruit MCP4725 library can run at speed 400KHz by setting the TWBR = 12;
// Nikita Vladimirov, 2019.
#include <Wire.h>
#include <Adafruit_MCP4725.h>

const float VCC = 5.0; // power supply voltage
const byte interruptPin = 7; // Teensy 2.0, interrupt pins are: 5, 6, 7, 8.
const byte ledPin = 11;
volatile int counter = 0;
volatile int counter_old = 0;
volatile byte ledState = LOW;
Adafruit_MCP4725 dac; // constructor
const float voltage_out_0 = 0.5;
const float voltage_out_1 = 4.5;
const int n_pulses_switch_period = 10; // DAC output will alternate between voltage_out_0 and voltage_out_1 with this period
uint16_t dac_value = 0; 
uint16_t dac_value_0 = 0; 
uint16_t dac_value_1 = 0; 

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(interruptPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(interruptPin), count, RISING);
  dac.begin(0x62); // if unsure, use I2C scanner to find the I2C address of your MCP4725: http://henrysbench.capnfatz.com/henrys-bench/arduino-projects-tips-and-more/arduino-quick-tip-find-your-i2c-address/
  dac_value_0 = volts2dac_value(voltage_out_0);
  dac_value_1 = volts2dac_value(voltage_out_1);
  dac_value = dac_value_0;
}

void loop() {
  if(counter > counter_old){
    Serial.println(counter);
    counter_old = counter;
    digitalWrite(ledPin, ledState);
    if(counter_old % n_pulses_switch_period == 0){
      if(dac_value == dac_value_0) dac_value = dac_value_1;
      else dac_value = dac_value_0;
    }
  }
  dac.setVoltage(dac_value, false); // this command should always run as fast as possible, since it doesn't hold the value.
}

void count() {
  counter++;
  ledState = !ledState;
}

uint16_t volts2dac_value(float volts){
  return(int(volts / VCC * 4095.0));
}

