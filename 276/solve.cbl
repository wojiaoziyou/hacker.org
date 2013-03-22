000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. nn.
000300 AUTHOR. TEEBEE.
000400****************************************************************
000500*    Simply transfer the present program to your favorite      *
000600*    mainframe computer, compile it, link it and submit some   *
000700*    appropriate JCL to run it. Its output tells the answer.   *
000800****************************************************************
000900 ENVIRONMENT DIVISION.
001000 CONFIGURATION SECTION.
001100 OBJECT-COMPUTER. IBM-370.
001200 SOURCE-COMPUTER. IBM-370.
001300 DATA DIVISION.
001400 WORKING-STORAGE SECTION.
001500 01 THE-NUMBERS.
001600      10 FILLER USAGE IS COMP-1 VALUE -.24093455E+04.
001700      10 FILLER USAGE IS COMP-1 VALUE -.55439209E-47.
001800      10 FILLER USAGE IS COMP-1 VALUE  .44591240E+13.
001900      10 FILLER USAGE IS COMP-1 VALUE -.22818252E-71.
002000      10 FILLER USAGE IS COMP-1 VALUE -.48936378E-36.
002100      10 FILLER USAGE IS COMP-1 VALUE  .53763199E+00.
002200      10 FILLER USAGE IS COMP-1 VALUE  .23808258E+74.
002300      10 FILLER USAGE IS COMP-1 VALUE -.13901026E-68.
002400      10 FILLER USAGE IS COMP-1 VALUE -.54452280E-53.
002500      10 FILLER USAGE IS COMP-1 VALUE -.33187504E+05.
002600      10 FILLER USAGE IS COMP-1 VALUE  .84218729E+00.
002700      10 FILLER USAGE IS COMP-1 VALUE -.18465549E-73.
002800      10 FILLER USAGE IS COMP-1 VALUE -.16025044E-50.
002900  01 THE-ANSWER REDEFINES THE-NUMBERS PIC X(52).
003000  PROCEDURE DIVISION.
003100      DISPLAY THE-ANSWER
003200      GOBACK.
003300  END PROGRAM nn.
