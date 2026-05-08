int soundSensor = A0; //사운드센서 핀
int led[5]={4,6,8,10,12}; //LED 핀번호
int threshold=300; //소리 크기 기준
int count=0;

void setup() {
  Serial.begin(9600);
  pinMode(soundSensor, INPUT);
  for(int i=0; i<5; i++)
    pinMode(led[i], OUTPUT);
}

void loop() {
  int sound_val=0;

  sound_val = analogRead(soundSensor);

  if (sound_val >= threshold){
    for(int i=0;i<5;i++){
      if (i==count)
        digitalWrite(led[i],HIGH);
      else
        digitalWrite(led[i],LOW);
    }
    count=(count<5)? count+1:0;
    delay(200);
  }
  else
    delay(1);
  Serial.println(sound_val); 
}