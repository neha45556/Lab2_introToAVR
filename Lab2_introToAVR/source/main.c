/*	Author: ngupt009
 *  Partner(s) Name: Surya Singh
 *	Lab Section:
 *	Assignment: Lab #  Exercise #
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
    /* Insert DDR and PORT initializations */
    DDRA = 0x00; PORTA = 0xFF;
    DDRB = 0xFF; PORTB = 0x00;
    unsigned char tmpB = 0x00;
    unsigned char tmpA = 0x00;
    unsigned char tmpC = 0x00;
   
    /* Insert your solution below */
    while (1) {
        tmpA = PINA & 0x01;
        tmpB = PINA & 0x02;
        if(tmpA == 0x01 && tmpB == 0x00){
            tmpC = (tmpC & 0xFE) | 0x01;
        }else{
            tmpC = (tmpC & 0xFE ) | 0x00;
        }
           
        
        PORTB = tmpC;
    }
    return 1;
}
