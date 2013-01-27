
int LEDs[] = { 2,3,4,5,6,7,8,9};

unsigned char pattern[16] = {
    1,
    2,
    4,
    8,
    16,
    32,
    64,
    128,
    128,
    64,
    32,
    16,
    8,
    4,
    2,
    1
  };

#define UP 1
#define DOWN 0
int direction;
int ledstat;

void setup() {
  for(int i = 0;i < 8; i++) {
    pinMode(LEDs[i], OUTPUT);
  }
  
  ledstat = 1;
  direction = UP;
}

void loop() {
  /*
  for(int i = 0; i < 8; i++)
    digitalWrite(LEDs[i], LOW );
    */
  for(int i = 0; i < 8; i++)
    digitalWrite(LEDs[i], ( pattern[ledstat]>>i&1 ? HIGH: LOW) );
  ledstat++;
  if ( !(ledstat < 16) )
    ledstat = ledstat % 16;
  delay(100);
}

