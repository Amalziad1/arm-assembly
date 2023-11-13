TXT1		DCB		'A', 'B', 'L', 0
TXT2		FILL		8
		ADR		R0, TXT1
		ADR		R1, TXT2
LOOPE
		LDRB		R2, [R0]
		CMP		R2, #0
		BEQ		HERE
		MOV		R2, R2, ROR #30
		STRB		R2, [R1]
		ADD		R0, R0, #1
		ADD		R1, R1, #1
		B		LOOPE
HERE
		MOV		R2, #0
		STRB		R2, [R1]
		END
		
TXT3
		ADR		R3, TXT3
LOOPD
		LDRB		R4, [R1]
		CMP		R4, #0
		BEQ		DONE
		MOV		R4, R4, ROR #2
		STRB		R4, [R3]
		SUB		R1, R1, #1
		ADD		R3, R3, #1
		B		LOOPD
DONE
		MOV		R4, #0
		STRB		R4, [R3]
		
		END
