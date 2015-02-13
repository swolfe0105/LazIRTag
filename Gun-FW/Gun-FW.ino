/*
 * IRremote: IRrecvDemo - demonstrates receiving IR codes with IRrecv
 * An IR detector/demodulator must be connected to the input RECV_PIN.
 * Version 0.1 July, 2009
 * Copyright 2009 Ken Shirriff
 * http://arcfn.com
 */

#include "IRremote5.h"

int RECV_PIN = 11;

//IRrecv irrecv(RECV_PIN);
IRsend irsend;
//decode_results results;

void setup()
{
  Serial.begin(9600);
  //irrecv.enableIRIn(); // Start the receiver
}

void loop() {
  //if (irrecv.decode(&results)) {
  //  Serial.println(results.value, HEX);
  //  irrecv.resume(); // Receive the next value
  //}
  char a[] = {0xAA,0xBB,0x1,0x23};
  irsend.sendLazIR(a,sizeof(a),38);
}
