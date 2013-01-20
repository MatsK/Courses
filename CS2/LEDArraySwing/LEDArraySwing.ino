
int LEDs[] = { 2,3,4,5,6,7,8,9};

unsigned char pattern[13] = {
    0,
    0,
    32+64,
    8+16+32+64+128,
    4+8+16+32+64+128,
    2+4+8+16+32+64,
    1+2+4+8+16+32,
    2+4+8+16+32+64,
    4+8+16+32+64+128,
    8+16+32+64+128,
    32+64,
    0,
    0,
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
  for(int i = 0; i < 8; i++)
    digitalWrite(LEDs[i], LOW );
  delay(2);
  for(int i = 0; i < 8; i++)
    digitalWrite(LEDs[i], ( pattern[ledstat]>>i&1 ? HIGH: LOW) );
  ledstat++;
  if ( !(ledstat < 13) )
    ledstat = ledstat % 13;
  delay(3);
}

