// LED 핀 번호 설정
const int ledPins[] = {2, 4, 7, 9}; // 2, 4, 7, 9번 핀에 연결된 LED
const int ledCount = 4; // LED 개수

void setup() {
  // 모든 LED 핀을 출력 모드로 설정
  for(int i = 0; i < ledCount; i++) {
    pinMode(ledPins[i], OUTPUT);
  }
}

void loop() {
  // 각 LED를 순차적으로 켜고 0.5초 후 끔
  for(int i = 0; i < ledCount; i++) {
    digitalWrite(ledPins[i], HIGH);  // LED 켜기
    delay(500);                      // 0.5초 대기
    digitalWrite(ledPins[i], LOW);   // LED 끄기
    delay(500);                      // 0.5초 대기
  }
}
