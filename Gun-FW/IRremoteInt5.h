/*
 * IRremote
 * Version 0.1 July, 2009
 * Copyright 2009 Ken Shirriff
 * For details, see http://arcfn.com/2009/08/multi-protocol-infrared-remote-library.html
 *
 * Modified by Paul Stoffregen <paul@pjrc.com> to support other boards and timers
 *
 * Interrupt code based on NECIRrcv by Joe Knapp
 * http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1210243556
 * Also influenced by http://zovirl.com/2008/11/12/building-a-universal-remote-with-an-arduino/
 *
 * JVC and Panasonic protocol added by Kristian Lauszus (Thanks to zenwheel and other people at the original blog post)
 */

#ifndef IRremoteint_h
#define IRremoteint_h

#if defined(ARDUINO) && ARDUINO >= 100
#include <Arduino.h>
#else
#include <WProgram.h>
#endif


//// Arduino Duemilanove, Diecimila, LilyPad, Mini, Fio, etc
//#else
  //#define IR_USE_TIMER1   // tx = pin 9
  #define IR_USE_TIMER2     // tx = pin 3
//#endif

#ifdef F_CPU
#define SYSCLOCK F_CPU     // main Arduino clock
#else
#define SYSCLOCK 16000000  // main Arduino clock
#endif

#define ERR 0
#define DECODED 1


// defines for setting and clearing register bits
#ifndef cbi
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif

//Pulse parameters for LazIR
#define LazIR_HDR_MARK	1600
#define LazIR_HDR_SPACE	400
#define LazIR_ONE_MARK	1000
#define LazIR_ZERO_MARK	600
#define LazIR_RPT_LENGTH 400
#define LazIR_DOUBLE_SPACE_USECS  500

#define TOLERANCE 90  // percent tolerance in measurements
#define LTOL (1.0 - TOLERANCE/100.) 
#define UTOL (1.0 + TOLERANCE/100.) 

#define _GAP 5000 // Minimum map between transmissions
#define GAP_TICKS (_GAP/USECPERTICK)

#define TICKS_LOW(us) (int) (((us)*LTOL/USECPERTICK))
#define TICKS_HIGH(us) (int) (((us)*UTOL/USECPERTICK + 1))

// receiver states
#define STATE_IDLE     2
#define STATE_MARK     3
#define STATE_SPACE    4
#define STATE_STOP     5

// information for the interrupt handler
typedef struct {
  uint8_t recvpin;           // pin for IR data from detector
  uint8_t rcvstate;          // state machine
  uint8_t blinkflag;         // TRUE to enable blinking of pin 13 on IR processing
  unsigned int timer;     // state timer, counts 50uS ticks.
  unsigned int rawbuf[50]; // raw data
  uint8_t rawlen;         // counter of entries in rawbuf
} 
irparams_t;


//typedef struct {
//  uint32_t prevTime;
  CircularBuffer <char,uint16_t,50> bitBuff;
//  boolean lastState;
//} 
//irSerial_t;


// Defined in IRremote.cpp
extern volatile irparams_t irparams;
//extern volatile irSerial_t irSerial;

// IR detector output is active low
#define MARK  0
#define SPACE 1

#define TOPBIT 0x80000000

// defines for timer2 (8 bits)
#if defined(IR_USE_TIMER2)
#define TIMER_RESET
#define TIMER_ENABLE_PWM     (TCCR2A |= _BV(COM2B1))
#define TIMER_DISABLE_PWM    (TCCR2A &= ~(_BV(COM2B1)))
#define TIMER_ENABLE_INTR    (TIMSK2 = _BV(OCIE2A))
#define TIMER_DISABLE_INTR   (TIMSK2 = 0)
#define TIMER_INTR_NAME      TIMER2_COMPA_vect
#define TIMER_CONFIG_KHZ(val) ({ \
  const uint8_t pwmval = SYSCLOCK / 2000 / (val); \
  TCCR2A = _BV(WGM20); \
  TCCR2B = _BV(WGM22) | _BV(CS20); \
  OCR2A = pwmval; \
  OCR2B = pwmval / 3; \
})
#define TIMER_COUNT_TOP      (SYSCLOCK * USECPERTICK / 1000000)
//#if (TIMER_COUNT_TOP < 256)
//#define TIMER_CONFIG_NORMAL() ({ \
//  TCCR2A = _BV(WGM21); \
//  TCCR2B = _BV(CS20); \
//  OCR2A = TIMER_COUNT_TOP; \
//  TCNT2 = 0; \
//})
//#else
#define TIMER_CONFIG_NORMAL() ({ \
  TCCR2A = _BV(WGM21); \
  TCCR2B = _BV(CS21); \
  OCR2A = TIMER_COUNT_TOP / 8; \
  TCNT2 = 0; \
})
//#define STATE_CHANGE_ISR_CONFIG() ({ \
//  EIMSK |= _BV(INT0); \
//  EICRA |= 0x31; \ //_BV(ISC01); \ //0x03l; \//_BV(ISC00); \
//})
#define TIMER_PWM_PIN        3  /* Arduino Duemilanove, Diecimila, LilyPad, etc */
#endif


//// defines for blinking the LED
//#if defined(CORE_LED0_PIN)
//#define BLINKLED       CORE_LED0_PIN
//#define BLINKLED_ON()  (digitalWrite(CORE_LED0_PIN, HIGH))
//#define BLINKLED_OFF() (digitalWrite(CORE_LED0_PIN, LOW))
//#elif defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
//#define BLINKLED       13
//#define BLINKLED_ON()  (PORTB |= B10000000)
//#define BLINKLED_OFF() (PORTB &= B01111111)
//#elif defined(__AVR_ATmega644P__) || defined(__AVR_ATmega644__)
//#define BLINKLED       0
//#define BLINKLED_ON()  (PORTD |= B00000001)
//#define BLINKLED_OFF() (PORTD &= B11111110)
//#else
//#define BLINKLED       13
//#define BLINKLED_ON()  (PORTB |= B00100000)
//#define BLINKLED_OFF() (PORTB &= B11011111)
//#endif

#endif


