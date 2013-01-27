/*
 演習課題 II-2
 シリアルポートの活用
 テンプレート
 */

void setup() {

  /* ボーレート 9660 baud をセットし，シリアルポートをオープンする */
  Serial.begin(9600);

  /* シリアルに送信する */
  Serial.print("Hello without New Line. ");
  Serial.println("Hello with New Line. ");
  /* 空行を出力 */
  Serial.println();

  /* いろいろな型を出力 */
  Serial.print("Print char as letter ");
  Serial.println('c');
  Serial.print("Print number ");
  Serial.println(1543);
  Serial.print("Print floating point ");
  Serial.println(3.1415926, 2);
}

void loop() {
  char c;

  if ( Serial.available() > 0 ) {
    Serial.println();
    Serial.print("At ");
    Serial.print(millis());
    Serial.println(" milli sec.");
    while ( Serial.available() > 0 ) {
      c = Serial.read();
      Serial.print("Received ");
      if ( isprint(c) ) {
        Serial.print(c);
      } 
      else {
        Serial.print("a not printable char. ");
      }
      Serial.println();
    }
  }

}


