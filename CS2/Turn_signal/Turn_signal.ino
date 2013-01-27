
const int led1 = 2;
const int led8 = 9;

const int button1 = 10;
const int button2 = 11;
const int button3 = 12;

int pos;
int diff;

void setup() {
  for(int i = led1; i <= led8; i++) {
    pinMode(i, OUTPUT);
  }

  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);
  digitalWrite(button3, HIGH);

  pos = 0;
  diff = 1;
}

void loop() {
  for(int i = 0; i <= 7; i++) {
    if (i == pos)
      digitalWrite(led1+i, HIGH);
    else
      digitalWrite(led1+i, LOW);
  }
  if ( diff > 0 ) {
    pos++;
    pos %= 8;
  } 
  else if ( diff < 0 ) {
    pos += 7;
    pos %= 8;
  }

  delay(67);

  if (digitalRead(button1) != LOW ) {
    diff = -1;
  } 
  else if (digitalRead(button3) == LOW ) {
    diff = 1;
  } else if ( digitalRead(button2) == LOW) {
    diff = 0;
  }

}









