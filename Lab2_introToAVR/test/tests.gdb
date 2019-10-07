#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

test “PINA: 0x00 => PORTC: 0x04”
setPINA 0x00
continue 5
expectPORTC 0x04
checkResult

test “PINA: 0x01 => PORTC: 0x03”
setPINA 0x01
continue 5
expectPORTC 0x03
checkResult

test “PINA: 0x04 => PORTC: 0x03”
setPINA 0x04
continue 5
expectPORTC 0x03
checkResult

test “PINA: 0x08 => PORTC: 0x03”
setPINA 0x08
continue 5
expectPORTC 0x03
checkResult

test “PINA: 0x0F => PORTC: 0x80”
setPINA 0x0F
continue 5
expectPORTC 0x80
checkResult

test “PINA: 0x03 => PORTC: 0x02”
setPINA 0x03
continue 5
expectPORTC 0x02
checkResult

test “PINA: 0x07 => PORTC: 0x01”
setPINA 0x07
continue 5
expectPORTC 0x01
checkResult

test “PINA: 0x0C => PORTC: 0x02”
setPINA 0x0C
continue 5
expectPORTC 0x02
checkResult




# Add tests below

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
