void setup() {
  // put your setup code here, to run once:
  for (int a = 2; a <= 9; a++) {
    pinMode(a, OUTPUT);  // Corrected from pingMode to pinMode
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  for (int a = 2; a <= 9; a++) {
    digitalWrite(a, HIGH);
    delay(1000);
  }
}
