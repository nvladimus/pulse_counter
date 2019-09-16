// This code counts rising edges of an input trigger (from camera or stage) 
// The input should be connected to Arduino's digital pin capable of Interrupt mode.
// The program switches analog output voltage setting after every N trigger pulses
// tested on Teensy 2.0, should work on Arduino, too.
// Nikita Vladimirov, 2019.

const byte interruptPin = 7; // Teensy 2.0, interrupt pins are: 5, 6, 7, 8.
const byte ledPin = 11;
volatile int counter = 0;
volatile int counter_old = 0;
volatile byte ledState = LOW;
  
void setup() {
  Serial.begin(9600);
  Serial.println("Basic counter test:");
  pinMode(ledPin, OUTPUT);
  pinMode(interruptPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(interruptPin), count, RISING);
}

void loop() {
  if(counter > counter_old){
    Serial.println(counter);
    counter_old = counter;
  }
  digitalWrite(ledPin, ledState);
}

void count() {
  counter++;
  ledState = !ledState;
}

