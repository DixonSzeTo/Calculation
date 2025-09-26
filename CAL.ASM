.MODEL SMALL
.STACK 64
.DATA

;USER LOG IN 

    ID DB  "ILOVEMATH"
    IPSW DB "1234"
    UID DB 0,0,0,0,0,0,0,0,0
    UPSW DB 0, 0, 0, 0
    IMSG DB 13,10,"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
         DB 13,10,"INVALID LOGIN! PLEASE TRY AGAIN ......$"
	

    VMSG DB 13,10,"    <><><><><><><><><><>"
	 DB 13,10,"    ACCESS GRANTED !    "
	 DB 13,10,"    <><><><><><><><><><>$"

WELCOMEM  DB 13,10,"		      WELCOME TO OUR EZ TALLY CALCULATOR"
	  DB 13,10,"	==========================================================="
          DB 13,10,"	||Below is our Access Information		         ||"
	  DB 13,10,"        ||-------------------------------------------------------||"
          DB 13,10,"        ||OUR ID:ILOVEMATH				         ||"	
          DB 13,10,"        ||OUR PASSWORD:1234				         ||"
	  DB 13,10,"	==========================================================="
          DB 13,10,13,10,"  *Kindly fill up the given information to start your calculation(MUST BE SAME)$"


    MSG6 DB 13,10,13,10,"    ID:$"
    MSG7 DB 13,10,      "    PASSWORD:$"


    MSG8 DB 13,10,13,10,"	Please choose a geometric shape that you want to calculate:"
	 DB 13,10,"	***************************************************************$"

    MSG9 DB 13,10,13,10,"	================"
	 DB 13,10,      "	||1)Trapezoid ||$"
    MSG10 DB 13,10,     "	||2)Cuboid    || "
	  DB 13,10,     "	================$"

    MSG11 DB 13,10,13,10,"	Enter your choice (1 or 2): $"
    MSG12 DB 13,10,13,10,"	PERIMETER(1) OR AREA(2) (TYPE 1 FOR PERIMETER AND 2 FOR AREA) :$"
    CONMSG DB 13,10,13,10," DO YOU WANT TO CONTINUE ANOTHER CALCULATION ? (Y/N): $"

    LOG	 	DB 13,10,13,10,"________________________________________________________________________________"
			DB 13,10,13,10,"                  THANK YOU " ,1, " FOR USING OUR EZ TALLY CALCULATOR "        
			DB 13,10,13,10,"________________________________________________________________________________$ "

    MSGYN    DB 0

;TRAPEZOID PERIMETER
    A  DB 0
    B  DB 0
    C  DB 0
    D  DB 0
    A1 DB 0
    A2 DB 0
    B1 DB 0
    B2 DB 0
    C1 DB 0
    C2 DB 0
    D1 DB 0
    D2 DB 0
	
    TP DB 13,10,"       __________________________________________________________________"
       DB 13,10,13,10," 	-How to find the PERIMETER of a trapezoid?				   "
       DB 13,10,13,10,"         -Formula : A+B+C+D    				"
       DB 13,10,"        _________________________________________________________________"
       DB 13,10,13,10," FOR EXAMPLE ! "
       DB 13,10,      " ############# "
       DB 13,10," A=Upper base of the trapezoid "
       DB 13,10," B=Lower base of the trapezoid " 
       DB 13,10," C=Left side of the trapezoid "
       DB 13,10," D=Right side of the trapezoid "
       DB 13,10," H=Height of the trapezoid "
       DB 13,10,13,10,"========================================================================="
       DB 13,10," KINDLY PROVIDE ALL OF THE ACCURATE MEASUREMENT  FOR A CORRECT CALCULATION$"

    MSG21 DB 13,10,13,10,"ENTER A (MM 01-63)=$"
    MSG22 DB 13,10,"ENTER B (MM 01-63)=$"
    MSG23 DB 13,10,"ENTER C (MM 01-63)=$"
    MSG24 DB 13,10,"ENTER D (MM 01-63)=$"
    

;TRAPEZOID AREA
      
TA     DB 13,10,"       __________________________________________________________________"
       DB 13,10,13,10," 	-How to find the AREA of a trapezoid?				   "
       DB 13,10,13,10,"        - Formula : (A+B) X H / 2"
       DB 13,10,"        _________________________________________________________________"
       DB 13,10,13,10," FOR EXAMPLE ! "
       DB 13,10,      " ############# "
       DB 13,10," A=Upper base of the trapezoid "
       DB 13,10," B=Lower base of the trapezoid "
       DB 13,10," C=Left side of the trapezoid "
       DB 13,10," D=Right side of the trapezoid "
       DB 13,10," H=Height of the trapezoid "
       DB 13,10,13,10,"========================================================================="
       DB 13,10," KINDLY PROVIDE ALL OF THE ACCURATE MEASUREMENT  FOR A CORRECT CALCULATION$"

T_A DB 13,10, "ENTER A (MM 01-99)=$"
T_B DB 13,10, "ENTER B (MM 01-99)=$"
T_H DB 13,10, "ENTER H (MM 01-25)=$"


   
  
    DIVIDE 	DB 2  

;IN COMMON

    TTL DW 0
    TEN DB 10
    Q1 DB 13,10, 0
    R1 DB 13,10, 0
    Q2 DB 13,10, 0
    R2 DB 13,10, 0
    Q3 DB 13,10, 0
    R3 DB 13,10, 0 
    H1 		DB 0
    H2		DB 0
    HT 		DB 0 
    CHOICE DB 13,10,"     {Invalid choice. Please enter 1 or 2 digits ONLY}$"
    CHOICE2 DB 13,10, "   ( PLEASE ENTER Y = YES OR N=NO  ) $"
 
    MM    DB "MM $"
    ANSMM DB 13,10,13,10,"    THE ANSWER IN MM IS=$"
    ANSCM DB 13,10,13,10,"    THE ANSWER IN CM IS=$"
    CM    DB "CM $"

    NVALID      DB 13,10,"-------------------------------------------------"
		DB 13,10,"PLEASE INSERT THE DIGIT WITHIN THE RANGE GIVEN$"

    
     
;CUBOID PERIMETER
    L1 	 	DB 0
    L2 		DB 0
    LEN  		DB 0
    W1 		DB 0
    W2 		DB 0
    WID  		DB 0
   
    MSG28     DB 13,10,13,10, "ENTER L (MM 01-85): $"
    MSG29     DB 13,10,"ENTER W (MM 01-85): $"
    MSG30     DB 13,10,"ENTER H (MM 01-85): $"
    MSG31     DB 13,10,13,10, "ENTER L (MM 01-33): $"
    MSG32     DB 13,10,"ENTER W (MM 01-20): $"
    MSG33     DB 13,10,"ENTER H (MM 01-10): $"
    EMSG	     DB 13,10,"INVALID INPUT$"  
CP  DB 13,10,"       __________________________________________________________________"
       DB 13,10,13,10," 	-How to find the PERIMETER of a CUBOID?				   "
       DB 13,10,13,10,"         -Formula : 4( L + W + H )				"
       DB 13,10,"        _________________________________________________________________"


    DB 13,10,13,10," FOR EXAMPLE ! "
    DB 13,10," ############# "
    DB 13,10," L=Length of cuboid	"
    DB 13,10," H=Height of cuboid	"
    DB 13,10," W=Width of cuboid       "
    DB 13,10,13,10,"========================================================================="
    DB 13,10," KINDLY PROVIDE ALL OF THE ACCURATE MEASUREMENT  FOR A CORRECT CALCULATION$"

;CUBOID AREA

CA  DB 13,10,"       __________________________________________________________________"
       DB 13,10,13,10," 	-How to find the AREA of a CUBOID?				   "
       DB 13,10,13,10,"         -Formula : 2( LW+WH+HL )		"
       DB 13,10,"        _________________________________________________________________"


    DB 13,10,13,10," FOR EXAMPLE ! "
    DB 13,10," ############# "
    DB 13,10," L=Length of cuboid	"
    DB 13,10," H=Height of cuboid	"
    DB 13,10," W=Width of cuboid       "
    DB 13,10,13,10,"========================================================================="
    DB 13,10," KINDLY PROVIDE ALL OF THE ACCURATE MEASUREMENT  FOR A CORRECT CALCULATION$"



    newline DB 0Ah, 0Dh, "$"
 
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

;-------------------------------------------DISPLAY Welcome Message

;OUTPUT STRING:09H(WELCOMEM)
	MOV AH,09H
	LEA DX,WELCOMEM
	INT 21H


;-------------------------------------------USER LOG IN

LOGIN_LOOP:
;OUTPUT STRING;09H(MSG6)
	MOV AH,09H
	LEA DX,MSG6
	INT 21H

;INPUT BYTE:01H && MOVE USER INPUT INTO ID[SI]
 	MOV CX,9
 	MOV SI,0
GETID:
 	MOV AH,01H
 	INT 21H
 	MOV UID[SI],AL
 	INC SI
 	LOOP GETID

;OUTPUT STRING;09H(MSG7)
	MOV AH,09H
	LEA DX,MSG7	
	INT 21H

;INPUT BYTE:01H && MOVE USER INPUT INTO IPSW[SI]
 	MOV CX,4
 	MOV SI,0
GETPSW:
 	MOV AH,01H
 	INT 21H
 	MOV UPSW[SI],AL
 	INC SI
 	LOOP GETPSW

;-----------------------------------------------VALIDATION FOR USER LOG IN 

MOV SI,0
MOV DI,0
CHKID:
 	CMP SI,9
 	JE CHKPSW
 	MOV AL,ID[SI]
 	CMP AL,UID[SI]
 	JE NID
 	JNE ERROR

NID:
 INC SI
 JMP CHKID

CHKPSW:
 	CMP DI,4
 	JE WELCOME
 	MOV AL,IPSW[DI]
 	CMP AL,UPSW[DI]
 	JE NPSW
 	JNE ERROR

NPSW:
 	INC DI
 	JMP CHKPSW

ERROR:
 	MOV AH,09H
 	LEA DX,IMSG
 	INT 21H
 	JMP LOGIN_LOOP

WELCOME:
 	MOV AH,09H
 	LEA DX,VMSG
 	INT 21H
	JMP MENU



;----------------------------------------------CHOOSE SHAPE

MENU:
	MOV AH, 09h
    	LEA DX, MSG8
    	INT 21H

    	MOV AH, 09h
    	LEA DX, MSG9
    	INT 21H

    	MOV AH, 09h
    	LEA DX, MSG10
    	INT 21H

MENU_LOOP:

;OUTPUT STRING:09H(MSG11)
    	MOV AH, 09h
    	LEA DX, MSG11
    	INT 21H
     
;INPUT BYTE (GET USER CHOICE):01H
    	MOV AH, 01H
    	INT 21H
    	SUB AL, '0'  ; Convert ASCII to integer
	

;CHECK USER'S CHOICE
    
    	CMP AL, 1
    	JE  TRAPEZOID_MENU
    	CMP AL, 2
    	JE CUBOID_MENU
 	JNE INVALID


INVALID:
    	MOV AH, 09h
    	LEA DX, CHOICE
    	INT 21H

    	JMP MENU_LOOP
;------------------------------------------TRAPEZOID FORMULA SELECTION

TRAPEZOID_MENU:		;TRAPEZOID
	MOV AH,09H
	LEA DX,MSG12
	INT 21H

	JMP CHOOSE_AREA_PERIMETER_T
	
	
CHOOSE_AREA_PERIMETER_T:		;CHOOSE AREA OR PERIMETER(TRAPEZOID)
	MOV AH, 01H
    	INT 21H
    	SUB AL, '0'  ; Convert ASCII to integer
	
	

;CHECK USER'S CHOICE
    
    	CMP AL, 1
    	JE TRAPEZOID1
	CMP AL, 2
        JE TRAPEZOID2
	JNE INVALID2

INVALID2:    	
 	MOV AH, 09h
    	LEA DX, CHOICE
    	
    	INT 21H
    	JMP TRAPEZOID_MENU

TRAPEZOID1: 
	JMP TRAPEZOID_P

TRAPEZOID2:
	JMP TRAPEZOID_A

;--------------------------------------------CUBOID FORMULA SELECTION

CUBOID_MENU:		;CUBOID
	MOV AH,09H
	LEA DX,MSG12
	INT 21H

	JMP CHOOSE_AREA_PERIMETER_C

CHOOSE_AREA_PERIMETER_C:		;CHOOSE AREA OR PERIMETER(TRAPEZOID)
	MOV AH, 01H
    	INT 21H
    	SUB AL, '0'  ; Convert ASCII to integer	
	
	
	

;CHECK_C
    
    	CMP AL, 1
    	JE  CUBOID1
    	CMP AL, 2
        JE CUBOID2
	JNE INVALID3


INVALID3:
    	MOV AH, 09h
    	LEA DX, CHOICE
    	
    	INT 21H
    	JMP CUBOID_MENU

CUBOID1:
	JMP CUBOID_P

CUBOID2:
	JMP CUBOID_A


;------------------------------------------------------------------TRAPEZOID(PERIMETER)
TRAPEZOID_P:		 ; Code for calculating trapezoid PERIMETER goes here

;OUTPUT STRING:09H(TP)
	MOV AH,09H
	LEA DX,TP
	INT 21H
	JMP GET_DIGIT_A


;----------------------------------------------A
GET_DIGIT_A:
	MOV AH,09H
	LEA DX,MSG21
	INT 21H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	
	
	

;-MOVE USER INPUT (AL) TO A1
	MOV A1,	AL	;A1=31H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	AL=(ASCII)5=35H
	

;-MOVE USER INPUT (AL) TO A2
	MOV A2,AL	;A2=35H

;CHECK DIGIT_A

	CMP A1,'0'
	JL INVALIDA
	CMP A1,'6'
	JG INVALIDA
	CMP A1,'6'
	JE CHECK_TPA
	JNE GET_DIGIT_B

CHECK_TPA:
    CMP A2, '0'
    JL  INVALIDA
    CMP A2, '4'
    JG  INVALIDA
    JNE GET_DIGIT_B

INVALIDA:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_DIGIT_A

;----------------------------------------------B
GET_DIGIT_B:
	MOV AH,09H
	LEA DX,MSG22
	INT 21H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	AL=(ASCII)1=31H
	

;-MOVE USER INPUT (AL) TO B1
	MOV B1,AL	;B1=31H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	
	
;-MOVE USER INPUT (AL) TO B2
	MOV B2,AL	;B2=35H

;CHECK DIGIT_B

	CMP B1,'0'
	JL INVALIDB
	CMP B1,'6'
	JG INVALIDB
	CMP B1,'6'
	JE CHECK_TPB
	JNE GET_DIGIT_C

CHECK_TPB:
    CMP B2, '0'
    JL  INVALIDB
    CMP B2, '4'
    JG  INVALIDB
    JNE GET_DIGIT_C

INVALIDB:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_DIGIT_B
	

;---------------------------------------------------C

GET_DIGIT_C:
	MOV AH,09H
	LEA DX,MSG23
	INT 21H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	AL=(ASCII)1=31H
	

;-MOVE USER INPUT (AL) TO C1
	MOV C1,AL	;C1=31H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	AL=(ASCII)5=35H
	

;-MOVE USER INPUT (AL) TO C2
	MOV C2,AL	;C2=35H

;CHECK DIGIT_C

	CMP C1,'0'
	JL INVALIDC
	CMP C1,'6'
	JG INVALIDC
	CMP C1,'6'
	JE CHECK_TPC
	JNE GET_DIGIT_D

CHECK_TPC:
    CMP C2, '0'
    JL  INVALIDC
    CMP C2, '4'
    JG  INVALIDC
    JNE GET_DIGIT_D

INVALIDC:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_DIGIT_C
	


;-----------------------------------------D

GET_DIGIT_D:
	MOV AH,09H
	LEA DX,MSG24
	INT 21H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	AL=(ASCII)1=31H
	
;-MOVE USER INPUT (AL) TO D1
	MOV D1,	AL	;D1=31H

;-INPUT BYTE:01H
	MOV AH,01H
	INT 21H ;	AL=(ASCII)5=35H
	

;-MOVE USER INPUT (AL) TO D2
	MOV D2,AL	;D2=35H

;CHECK DIGIT_D

	CMP D1,'0'
	JL INVALIDD
	CMP D1,'6'
	JG INVALIDD
	CMP D1,'6'
	JE CHECK_TPD
	JNE CALCULATION_TP

CHECK_TPD:
    CMP D2, '0'
    JL  INVALIDD
    CMP D2, '4'
    JG  INVALIDD
    JNE CALCULATION_TP

INVALIDD:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_DIGIT_D
	



;------------------------------------------CALCULATION (TRAPEZOID PERIMETER)

; The formula for the perimeter of a trapezoid is P = A + B + C + D

CALCULATION_TP:
;1)CLEAR AX	

	MOV AX,0	;AX=0

;2)CONVERT HEX TO DEC (A1-D2)
	SUB A1,30H	;2
	SUB A2,30H	;5	
	SUB B1,30H	;2
	SUB B2,30H	;6
	SUB C1,30H	;2
	SUB C2,30H	;7
	SUB D1,30H	;2
	SUB D2,30H	;8

;--------------------------------------------------STORE A1,A2 TO A

 ;3)MOVE MULTIPLICANT (A1) TO AL,MULTIPIED BY MULPLIER(TEN),ADD A2 TO RESULT(AL) AND MOVE RESULT (AL) TO A
	MOV AL, A1	;AL=2
	MUL TEN		;AL=2x10=20
	ADD AL,A2	;AL=20+5=25
	MOV A, AL  ; Assuming A is Upper base , A=25

;--------------------------------------------------STORE B1,B2 TO B

;4) Clear AX
	MOV AX, 0

;5) MOVE MULTIPLICANT (B1) TO AL,MULTIPIED BY MULPLIER(TEN),ADD B2 TO RESULT(AL) AND MOVE RESULT (AL) TO B

	MOV AL, B1
	MUL TEN
	ADD AL,B2
	MOV B, AL  ; Assuming B is Lower base

;--------------------------------------------------STORE C1,C2 TO C

;6) CLEAR AX
	MOV AX,0

;7) MOVE MULTIPLICANT (C1) TO AL,MULTIPIED BY MULPLIER(TEN),ADD C2 TO RESULT(AL) AND MOVE RESULT (AL) TO C

	MOV AL, C1
	MUL TEN
	ADD AL,C2
	MOV C, AL  ; Assuming C is Left side

;--------------------------------------------------STORE D1,D2 TO D

;8) CLEAR AX
	MOV AX,0

;9) MOVE MULTIPLICANT (D1) TO AL,MULTIPIED BY MULPLIER(TEN),ADD D2 TO RESULT(AL) AND MOVE RESULT (AL) TO D

	MOV AL, D1
	MUL TEN
	ADD AL,D2	
	MOV D, AL  ; Assuming D is Right side


;------------------------------------------------SUM UP ALL OF THE PARTS

;10)CLEAR AX
	MOV AX,0

;11)MOVE MULTICAND (A) TO AL

	MOV AL,A

;12)ADDITION(B,C,D)
ADD AL,B
ADD AL,C
ADD AL,D

	

;-13)MOVE RESULT(AX) TO TTL
	MOV TTL,AX

;--------------------------------------------CONVERT TOTAL

;-14)CLEAR AX

	MOV AX,0	;AX=0

;-15)MOVE DIVIDEND (TTL) TO AX
	MOV AX,TTL
	
;-16)DIVIDED BT DIVISOR (TEN)
	DIV TEN		

;-17)MOVE QUOTIENT (AL) TO Q1
;	MOVE REMAINDER (AH) TO R1

	MOV Q1,AL	
	MOV R1,AH	


;--------------------------------------------

;-18)CLEAR AX
	MOV AX,0	;AX=0

;-19)MOVE DIVIDEND (Q1) TO AL
	MOV AL,Q1	;AL=10

;-20)DIVIDED BT DIVISOR (TEN)
	DIV TEN		
			

;-21)MOVE QUOTIENT (AL) TO Q2
;	MOVE REMAINDER (AH) TO R2

	MOV Q2,AL	
	MOV R2,AH	

;-15)CONVERT DEC TO HEX (Q2,R2,R1)
	ADD Q2,30H	;12=31H
	ADD R2,30H	;R2=30H
	ADD R1,30H	;R1=35H


;--------------------------------------RESULTS (MM)

; Display the result
MOV AH, 09H
LEA DX, ANSMM
INT 21H

;-OUTPUT BYTE:02H(Q2)
	MOV AH,02H
	MOV DL,Q2
	INT 21H

;-OUTPUT BYTE:02H(R2)
	MOV AH,02H
	MOV DL,R2
	INT 21H

;-OUTPUT BYTE:02H(R1)
	MOV AH,02H
	MOV DL,R1
	INT 21H
;------------------------------------------DISPLAY THE MM

;OUTPUT STRING:09H(MM)
	MOV AH,09H
	LEA DX,MM
	INT 21H

;--------------------------------------RESULTS (CM)

; Display the result
MOV AH, 09H
LEA DX, ANSCM
INT 21H

;-OUTPUT BYTE:02H(Q2)
	MOV AH,02H
	MOV DL,Q2
	INT 21H

;OUTPUT BYTE:02H('.')
	MOV AH,02H
	MOV DL,'.'
	INT 21H

;-OUTPUT BYTE:02H(R2)
	MOV AH,02H
	MOV DL,R2
	INT 21H

;-OUTPUT BYTE:02H(R1)
	MOV AH,02H
	MOV DL,R1
	INT 21H
;------------------------------------------DISPLAY THE CM

;OUTPUT STRING:09H(MM)
	MOV AH,09H
	LEA DX,CM
	INT 21H

;----------------------------------------ASK USER CONTINUE OR NOT?
CONTINUE:
;OUTPUT STRING:09H(CONMSG)
	MOV AH,09H
	LEA DX,CONMSG
	INT 21H

;-INPUT BYTE:01H(MSGYN)
	MOV AH,01H
	INT 21H

;CHECKY
 CMP AL, 'N'
 JE LOGOUT

 CMP AL, 'Y'
 JNE CHCKYN
JMP MENU
 
 
CHCKYN:
MOV AH,09H
LEA DX,CHOICE2
INT 21H
JMP CONTINUE

LOGOUT:
;OUTPUT STRING:09H(LOG)
	MOV AH,09H
	LEA DX,LOG
	INT 21H
	
JMP EXIT

;---------------------------------------------------------------------------------
TRAPEZOID_A:			; Code for calculating trapezoid AREA goes here
    
 ;OUTPUT STRING:09H(TA)
	MOV AH,09H
	LEA DX,TA
	INT 21H

;----------------------------GET A
GET_DIGIT_A2:
 MOV AH,09H
 LEA DX,T_A
 INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H

;-MOVE INPUT (AL) TO A1
 MOV A1,AL

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H

;-MOVE INPUT (AL) TO A2
 MOV A2,AL



;---------------------------GET B

GET_DIGIT_B2:
 MOV AH,09H
 LEA DX,T_B
 INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H

;-MOVE INPUT (AL) TO B1
 MOV B1, AL

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H

;-MOVE INPUT (AL) TO B2
 MOV B2,AL


;---------------------------GET HEIGHT

GET_DIGIT_H:

 MOV AH,09H
 LEA DX,T_H
 INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H

;-MOVE INPUT (AL) TO H1
 MOV H1, AL

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H

;-MOVE INPUT (AL) TO H2
 MOV H2,AL

;CHECK DIGIT_H3

	CMP AL,'0'
	JL INVALIDH3
	CMP AL,'5'
	JG INVALIDH3
	CMP AL,'5'
	JG CHECK_TPH
	JNE CALCULATION_TA

CHECK_TPH:
	CMP AL,'0'
	JL INVALIDH3
	CMP AL,'6'
	JG INVALIDH3
	JNE CALCULATION_TA
	

INVALIDH3:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_DIGIT_H


;--------------------------CALCULATION 

CALCULATION_TA:
;-1)CLEAR AX
 MOV AX,0

;-2)CONVERT HEX TO DEC (A1,A2,B1,B2,H1,H2)
 SUB A1,30H
 SUB A2,30H
 SUB B1,30H
 SUB B2,30H
 SUB H1,30H
 SUB H2,30H

;--------------------------------------------------STORE A1,A2 TO LENGTH
;-3)MOVE MULTICAND (A1 TO  AL
  MOV AL,A1

;-4)MULTIPIED BY MULPLIER (TEN)
 MUL TEN

;-5)ADD A2 TO RESULT (AL)
  ADD AL,A2

;-6)MOVE RESULT (AL) TO A
 MOV A,AL


;-----------------------------------------------STORE B1,B2 TO WIDTH
;-7)CLEAR AX
 MOV AX,0

;-8)MOVE MULTILPLICAND (B1) TO AL
 MOV AL,B1

;-9)MULTIPLIED BY MULTIPIER (TEN)
 MUL TEN

;-10)ADD B2 TO RESULT (AL)
 ADD AL,B2

;-11)MOV RESULT (AL) TO B
 MOV B,AL
;---------------------------------------------STORE H1,H2 TO HEIGHT
;-12)CLEAR AX
 MOV AX,0

;-13)MOVE MULTILPLICAND (H1) TO AL
 MOV AL,H1

;-14)MULTIPLIED BY MULTIPIER (TEN)
 MUL TEN

;-15)ADD H2 TO RESULT (AL)
 ADD AL,H2

;-16)MOV RESULT (AL) TO HT
 MOV HT,AL
;------------------------------------------------CALCULATE AREA OF TRAPEZOID
;-17)CLEAR AX
 MOV AX,0

;-18)MOVE MULTICAND (A) TO  AL
 MOV AL,A

;-19)ADDITION(B,HEIGHT)
 ADD AL, B
 SHR AL,1 		;DIVIDE FIRST
 MUL HT
 

;-20)MOVE RESULT (Ax) TO TTL
 MOV TTL,AX
;--------------------------------------------CONVERT TOTAL
;-21)CLEAR AX
 MOV AX,0

;-22)MOVE DIVEDEND (TTL) TO AX
 MOV AX,TTL

;-23)DIVIDED BY DIVISOR (TEN)
 DIV TEN

;-24) MOVE QUOTIENT (AL) TO Q1
;      MOVE REMAINDER (AH) TO R1
 MOV Q1,AL
 MOV R1,AH
;--------------------------------------------
;-25)CLEAR AX
 MOV AX,0

;-26)MOVE DIVIDEND (Q1) TO AL
 MOV AL,Q1

;-27)DIVIDEND BY DIVISOR (TEN)
 DIV TEN

;-28)MOVE QUOTENT (AL) TO Q2
 MOV Q2,AL
 MOV R2,AH

;-29)CLEAR AX
 MOV AX,0

;-30)MOVE DIVIDEND (Q2) TO AL
 MOV AL,Q2

;-31)DIVIDEND BY DIVISOR (TEN)
 DIV TEN

;-32)MOVE QUOTENT (AL) TO Q3
;		REMAINDER (AH) TO R2
 MOV Q3,AL
 MOV R3,AH

;-33)CONVERT DEC TO HEX (Q3,Q2,R2,R1)
 ADD Q3,30H
 ADD R3,30H
 ADD R2,30H
 ADD R1,30H

;--------------------------------------------------------RESULTS (MM)

;-OUTPUT STRING:09H(ANSMM)
 MOV AH,09H
 LEA DX,ANSMM
 INT 21H
;-OUTPUT BYTE:02H(Q3)
 MOV AH, 02H
 MOV DL,Q3
 INT 21H
;-OUTPUT BYTE:02H(R3)
 MOV AH, 02H
 MOV DL,R3
 INT 21H
;-OUTPUT BYTE:02H(R2)
 MOV AH, 02H
 MOV DL,R2
 INT 21H
;-OUTPUT BYTE:02H(R1)
 MOV AH, 02H
 MOV DL,R1
 INT 21H
;------------------------------------------------------DISPLAY THE (MM)
;-OUTPUT STRING:09H(MM)
 MOV AH,09H
 LEA DX,MM
 INT 21H 

;------------------------------------------------------RESULTS CM
;OUTPUT STRING:09H(ANSCM)
 MOV AH,09H
 LEA DX,ANSCM
 INT 21H

;-OUTPUT BYTE:02H(Q3)
 MOV AH, 02H
 MOV DL,Q3
 INT 21H
;-OUTPUT BYTE:02H(R3)
 MOV AH, 02H
 MOV DL,R3
 INT 21H
;OUTPUT BYTE:02H('.')
 MOV AH,02H
 MOV DL,'.'
 INT 21H
;-OUTPUT BYTE:02H(R2)
 MOV AH, 02H
 MOV DL,R2
 INT 21H
;-OUTPUT BYTE:02H(R1)
 MOV AH, 02H
 MOV DL,R1
 INT 21H

;-----------------------------------------------------------DISPLAY THE CM
;-OUTPUT STRING:09H
 MOV AH,09H
 LEA DX,CM
 INT 21H

;----------------------------------------ASK USER CONTINUE OR NOT?
CONTINUE2:
;OUTPUT STRING:09H(CONMSG)
	MOV AH,09H
	LEA DX,CONMSG
	INT 21H

;-INPUT BYTE:01H(MSGYN)
	MOV AH,01H
	INT 21H

;CHECKY
 CMP AL, 'N'
 JE LOGOUT2

 CMP AL, 'Y'
 JNE CHCKYN2
JMP MENU
 
 
CHCKYN2:
MOV AH,09H
LEA DX,CHOICE2
INT 21H
JMP CONTINUE2

LOGOUT2:
;OUTPUT STRING:09H(LOG)
	MOV AH,09H
	LEA DX,LOG
	INT 21H
	
JMP EXIT

;------------------------------------------------------------------CUBOID(PERIMETER)

CUBOID_P:	 ; Code for calculating PERIMETER  goes here

;OUTPUT STRING:09H(CP)
	MOV AH,09H
	LEA DX,CP
	INT 21H


;----------------------------GET LENGTH

GET_LENGTH:
;-OUTPUT STRING:09H(MSG28)
	MOV AH,09H
	LEA DX,MSG28
	INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO L1
 MOV L1,AL
;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO L2
 MOV L2,AL


;CHECK LENGTH_L

	CMP L1,'0'
	JL INVALIDL
	CMP L1,'8'
	JG INVALIDL
	CMP L1,'8'
	JE CHECK_CL
	JNE GET_WIDTH

CHECK_CL:
    CMP L2, '0'
    JL  INVALIDL
    CMP L2, '6'
    JG  INVALIDL
    JNE GET_WIDTH

INVALIDL:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_LENGTH


	
;---------------------------GET WIDTH

GET_WIDTH:
;-OUTPUT STRING:09H(MSG29)
 	MOV AH,09H
 	LEA DX,MSG29
 	INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO W1
 MOV W1, AL
;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO W2
 MOV W2,AL

;----------------------------------VALIDATION FOR WIDTH
;CHECK WIDTH_W

	CMP W1,'0'
	JL INVALIDW
	CMP W1,'8'
	JG INVALIDW
	CMP W1,'8'
	JE CHECK_CW
	JNE GET_HEIGHT

CHECK_CW:
    CMP W2, '0'
    JL  INVALIDW
    CMP W2, '6'
    JG  INVALIDW
    JNE GET_HEIGHT

INVALIDW:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_WIDTH

;---------------------------GET HEIGHT

GET_HEIGHT:
;-OUTPUT STRING:09H(MSG30)
 	MOV AH,09H
	LEA DX,MSG30
 	INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO H1
 MOV H1, AL
;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO H2
 MOV H2,AL

;VALIDATION FOR HEIGHT

;CHECK HEIGHT_H

	CMP H1,'0'
	JL INVALIDH
	CMP H1,'8'
	JG INVALIDH
	CMP H1,'8'
	JE CHECK_CH
	JNE CALC_PERI_CUB

CHECK_CH:
    CMP H2, '0'
    JL  INVALIDH
    CMP H2, '6'
    JG  INVALIDH
    JNE CALC_PERI_CUB

INVALIDH:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_HEIGHT

;--------------------------CALCULATION
CALC_PERI_CUB:
;-1)CLEAR AX
 MOV AX,0
;-2)CONVERT HEX TO DEC (L1,L2,W1,W2,H1,H2)
 SUB L1,30H
 SUB L2,30H
 SUB W1,30H
 SUB W2,30H
 SUB H1,30H
 SUB H2,30H
;--------------------------------------------------STORE L1,L2 TO LENGTH
;-3)MOVE MULTICAND (L1 TO  AL
  MOV AL,L1
;-4)MULTIPIED BY MULPLIER (TEN)
 MUL TEN
;-5)ADD W2 TO RESULT (AL)
  ADD AL,L2
;-6)MOVE RESULT (AL) TO LEN
 MOV LEN,AL
;-----------------------------------------------STORE W1,W2 TO WIDTH
;-7)CLEAR AX
 MOV AX,0
;-8)MOVE MULTILPLICAND (W1) TO AL
 MOV AL,W1
;-9)MULTIPLIED BY MULTIPIER (TEN)
 MUL TEN
;-10)ADD W2 TO RESULT (AL)
 ADD AL,W2
;-11)MOV RESULT (AL) TO WID
 MOV WID,AL
;---------------------------------------------STORE H1,H2 TO HEIGHT
;-12)CLEAR AX
 MOV AX,0
;-13)MOVE MULTILPLICAND (H1) TO AL
 MOV AL,H1
;-14)MULTIPLIED BY MULTIPIER (TEN)
 MUL TEN
;-15)ADD H2 TO RESULT (AL)
 ADD AL,H2
;-16)MOV RESULT (AL) TO HEIGHT
 MOV HT,AL
;------------------------------------------------CALCULATE PERIMETER OF CUBOID
;-17)CLEAR AX
 MOV AX,0
;-18)MOVE MULTICAND (LEN) TO  AL
 MOV AL,LEN
;-19)ADDITION(WID,HEIGHT)
 ADD AL, WID
 ADD AL, HT
 MOV BX, 4
 MUL BX
;-20)MOVE RESULT (Ax) TO TTL
 MOV TTL,AX
;--------------------------------------------CONVERT TOTAL
;-21)CLEAR AX
 MOV AX,0
;-22)MOVE DIVEDEND (TTL) TO AX
 MOV AX,TTL
;-23)DIVIDED BY DIVISOR (TEN)
 DIV TEN
;-24) MOVE QUOTIENT (AL) TO Q1
;      MOVE REMAINDER (AH) TO R1
 MOV Q1,AL
 MOV R1,AH
;--------------------------------------------
;-25)CLEAR AX
 MOV AX,0
;-26)MOVE DIVIDEND (Q1) TO AL
 MOV AL,Q1
;-27)DIVIDEND BY DIVISOR (TEN)
 DIV TEN
;-28)MOVE QUOTENT (AL) TO Q2
 MOV Q2,AL
 MOV R2,AH
;-----------------------------------------------
;-29)CLEAR AX
 MOV AX,0
;-30)MOVE DIVIDEND (Q2) TO AL
 MOV AL,Q2
;-31)DIVIDEND BY DIVISOR (TEN)
 DIV TEN
;-32)MOVE QUOTENT (AL) TO Q3
;		REMAINDER (AH) TO R2
 MOV Q3,AL
 MOV R3,AH
;----------------------------------------------
;-34)CONVERT DEC TO HEX (Q3,Q2,R2,R1)
 ADD Q3,30H
 ADD R3,30H
 ADD R2,30H
 ADD R1,30H
;--------------------------------------------------------RESULTS (MM)

;-OUTPUT STRING:09H(ANSMM)
 MOV AH,09H
 LEA DX,ANSMM
 INT 21H
;-OUTPUT BYTE:02H(Q3)
 MOV AH, 02H
 MOV DL,Q3
 INT 21H
;-OUTPUT BYTE:02H(R3)
 MOV AH, 02H
 MOV DL,R3
 INT 21H
;-OUTPUT BYTE:02H(R2)
 MOV AH, 02H
 MOV DL,R2
 INT 21H
;-OUTPUT BYTE:02H(R1)
 MOV AH, 02H
 MOV DL,R1
 INT 21H

;------------------------------------------DISPLAY THE MM

;OUTPUT STRING:09H(MM)
MOV AH,09H
LEA DX,MM
INT 21H

;--------------------------------------RESULTS (CM)

; Display the result
 MOV AH, 09H
 LEA DX, ANSCM
 INT 21H

;-OUTPUT BYTE:02H(Q3)
  MOV AH, 02H
  MOV DL,Q3
  INT 21H

;-OUTPUT BYTE:02H(R3)
 MOV AH,02H
 MOV DL,R3
 INT 21H

;OUTPUT BYTE:02H('.')
 MOV AH,02H
 MOV DL,'.'
 INT 21H

;-OUTPUT BYTE:02H(R2)
 MOV AH,02H
 MOV DL,R2
 INT 21H

;-OUTPUT BYTE:02H(R1)
 MOV AH,02H
 MOV DL,R1
 INT 21H
;------------------------------------------DISPLAY THE CM

;OUTPUT STRING:09H(MM)
 MOV AH,09H
 LEA DX,CM
 INT 21H

;----------------------------------------ASK USER CONTINUE OR NOT?
CONTINUE3:
;OUTPUT STRING:09H(CONMSG)
	MOV AH,09H
	LEA DX,CONMSG
	INT 21H

;-INPUT BYTE:01H(MSGYN)
	MOV AH,01H
	INT 21H

;CHECKY
 CMP AL, 'N'
 JE LOGOUT3

 CMP AL, 'Y'
 JNE CHCKYN3
JMP MENU
 
 
CHCKYN3:
MOV AH,09H
LEA DX,CHOICE2
INT 21H
JMP CONTINUE3

LOGOUT3:
;OUTPUT STRING:09H(LOG)
	MOV AH,09H
	LEA DX,LOG
	INT 21H
	
JMP EXIT

;---------------------------------------------------------------------------   
CUBOID_A:	 ; Code for calculating AREA goes here

;OUTPUT STRING:09H(CA)
 MOV AH,09H
 LEA DX,CA
 INT 21H

;----------------------------GET LENGTH
GET_LENGTH2:
;-OUTPUT STRING:09H(MSG31)
 	MOV AH,09H
 	LEA DX,MSG31
 	INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO L1
 MOV L1,AL
;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO L2
 MOV L2,AL

;-------------------------VALIDATION FOR LENGTH

;CHECK LENGTH_L2

	CMP L1,'0'
	JL INVALIDL2
	CMP L1,'3'
	JG INVALIDL2
	CMP L1,'3'
	JE CHECK_CL2
	JNE GET_WIDTH2

CHECK_CL2:
    CMP L2, '0'
    JL  INVALIDL2
    CMP L2, '4'
    JG  INVALIDL2
    JNE GET_WIDTH2

INVALIDL2:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_LENGTH2

;---------------------------GET WIDTH
GET_WIDTH2:
;-OUTPUT STRING:09H(MSG32)
 	MOV AH,09H
 	LEA DX,MSG32
 	INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO W1
 MOV W1, AL
;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO W2
 MOV W2,AL

;-----------------------VALIDATION FOR WIDTH

;CHECK WIDTH_W2

	CMP W1,'0'
	JL INVALIDW2
	CMP W1,'2'
	JG INVALIDW2
	CMP W1,'2'
	JE CHECK_CW2
	JNE GET_HEIGHT2

CHECK_CW2:
    CMP W2, '0'
    JL  INVALIDW2
    CMP W2, '1'
    JG  INVALIDW2
    JNE GET_HEIGHT2

INVALIDW2:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_WIDTH2
;---------------------------GET HEIGHT
GET_HEIGHT2:
;-OUTPUT STRING:09H(MSG33)
 	MOV AH,09H
 	LEA DX,MSG33
 	INT 21H

;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO H1
 MOV H1, AL
;-INPUT BYTE:01H
 MOV AH,01H
 INT 21H
;-MOVE INPUT (AL) TO H2
 MOV H2,AL

;-----------------------VALIDATION FOR HEIGHT
;CHECK HEIGHT_H2

	CMP H1,'0'
	JL INVALIDH2
	CMP H1,'1'
	JG INVALIDH2
	CMP H1,'1'
	JE CHECK_CH2
	JNE CALC_AREA_CUB

CHECK_CH2:
    CMP H2, '0'
    JL  INVALIDH2
    CMP H2, '1'
    JG  INVALIDH2
    JNE CALC_AREA_CUB

INVALIDH2:
	MOV AH,09H
	LEA DX,NVALID
	INT 21H
	JMP GET_HEIGHT2

;--------------------------CALCULATION
CALC_AREA_CUB:
;-1)CLEAR AX
 MOV AX,0
;-2)CONVERT HEX TO DEC (L1,L2,W1,W2,H1,H2)
 SUB L1,30H
 SUB L2,30H
 SUB W1,30H
 SUB W2,30H
 SUB H1,30H
 SUB H2,30H
;--------------------------------------------------STORE L1,L2 TO LENGTH
;-3)MOVE MULTICAND (L1 TO  AL
  MOV AL,L1
;-4)MULTIPIED BY MULPLIER (TEN)
 MUL TEN
;-5)ADD W2 TO RESULT (AL)
  ADD AL,L2
;-6)MOVE RESULT (AL) TO LEN
 MOV LEN,AL
;-----------------------------------------------STORE W1,W2 TO WIDTH
;-7)CLEAR AX
 MOV AX,0
;-8)MOVE MULTILPLICAND (W1) TO AL
 MOV AL,W1
;-9)MULTIPLIED BY MULTIPIER (TEN)
 MUL TEN
;-10)ADD W2 TO RESULT (AL)
 ADD AL,W2
;-11)MOV RESULT (AL) TO WID
 MOV WID,AL
;---------------------------------------------STORE H1,H2 TO HEIGHT
;-12)CLEAR AX
 MOV AX,0
;-13)MOVE MULTILPLICAND (H1) TO AL
 MOV AL,H1
;-14)MULTIPLIED BY MULTIPIER (TEN)
 MUL TEN
;-15)ADD H2 TO RESULT (AL)
 ADD AL,H2
;-16)MOV RESULT (AL) TO HEIGHT
 MOV HT,AL
;------------------------------------------------CALCULATE AREA OF CUBOID
;-17)CLEAR AX
 MOV AX,0
;-18)MOVE MULTICAND (LEN) TO  AL
 MOV AL, LEN
;-19)CALCULATE AREA
 MOV BL, LEN
 MUL WID
 MOV BX, AX
 MOV AL, WID
 MUL HT
 ADD BX, AX
 MOV AL, HT
 MUL LEN
 ADD AX, BX
 MOV BX, 2
 MUL BX
;-20)MOVE RESULT (Ax) TO TTL
 MOV TTL, AX

;--------------------------------------------CONVERT TOTAL
;-22)MOVE DIVEDEND (TTL) TO AX
 MOV AX,TTL
;-23)DIVIDED BY DIVISOR (TEN)
 DIV TEN
;-24) MOVE QUOTIENT (AL) TO Q1
;      MOVE REMAINDER (AH) TO R1
 MOV Q1,AL
 MOV R1,AH
;--------------------------------------------
;-25)CLEAR AX
 MOV AX,0
;-26)MOVE DIVIDEND (Q1) TO AL
 MOV AL,Q1
;-27)DIVIDEND BY DIVISOR (TEN)
 DIV TEN
;-28)MOVE QUOTENT (AL) TO Q2
;		REMAINDER (AH) TO R2
 MOV Q2,AL
 MOV R2,AH
;-----------------------------------------------
;-29)CLEAR AX
 MOV AX,0
;-30)MOVE DIVIDEND (Q2) TO AL
 MOV AL,Q2
;-31)DIVIDEND BY DIVISOR (TEN)
 DIV TEN
;-32)MOVE QUOTENT (AL) TO Q3
;		REMAINDER (AH) TO R2
 MOV Q3,AL
 MOV R3,AH
;----------------------------------------------
;-34)CONVERT DEC TO HEX (Q3,Q2,R2,R1)
 ADD Q3,30H
 ADD R3,30H
 ADD R2,30H
 ADD R1,30H
;--------------------------------------------------------RESULTS (MM)

;-OUTPUT STRING:09H(ANSMM)
 MOV AH,09H
 LEA DX,ANSMM
 INT 21H
;-OUTPUT BYTE:02H(Q3)
 MOV AH, 02H
 MOV DL,Q3
 INT 21H
;-OUTPUT BYTE:02H(R3)
 MOV AH, 02H
 MOV DL,R3
 INT 21H
;-OUTPUT BYTE:02H(R2)
 MOV AH, 02H
 MOV DL,R2
 INT 21H
;-OUTPUT BYTE:02H(R1)
 MOV AH, 02H
 MOV DL,R1
 INT 21H
;------------------------------------------------------DISPLAY THE (MM)
;-OUTPUT STRING:09H(MM)
 MOV AH,09H
 LEA DX,MM
 INT 21H 

;------------------------------------------------------RESULTS CM
;OUTPUT STRING:09H(ANSCM)
 MOV AH,09H
 LEA DX,ANSCM
 INT 21H

;-OUTPUT BYTE:02H(Q3)
 MOV AH, 02H
 MOV DL,Q3
 INT 21H
;-OUTPUT BYTE:02H(R3)
 MOV AH, 02H
 MOV DL,R3
 INT 21H
;OUTPUT BYTE:02H('.')
 MOV AH,02H
 MOV DL,'.'
 INT 21H
;-OUTPUT BYTE:02H(R2)
 MOV AH, 02H
 MOV DL,R2
 INT 21H
;-OUTPUT BYTE:02H(R1)
 MOV AH, 02H
 MOV DL,R1
 INT 21H

;-----------------------------------------------------------DISPLAY THE CM
;-OUTPUT STRING:09H
 MOV AH,09H
 LEA DX,CM
 INT 21H

;----------------------------------------ASK USER CONTINUE OR NOT?
CONTINUE4:
;OUTPUT STRING:09H(CONMSG)
	MOV AH,09H
	LEA DX,CONMSG
	INT 21H

;-INPUT BYTE:01H(MSGYN)
	MOV AH,01H
	INT 21H

;CHECKY
 CMP AL, 'N'
 JE LOGOUT4

 CMP AL, 'Y'
 JNE CHCKYN4
JMP MENU
 
 
CHCKYN4:
MOV AH,09H
LEA DX,CHOICE2
INT 21H
JMP CONTINUE4

LOGOUT4:
;OUTPUT STRING:09H(LOG)
	MOV AH,09H
	LEA DX,LOG
	INT 21H
	
JMP EXIT
    	
EXIT:
MOV AH, 4CH
    INT 21H


MAIN ENDP
END MAIN