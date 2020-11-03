Program ProtoType;

Uses Crt;

{
	I wrote this little program to prototype the geo effect.
	I wasn't really sure what the best approach was, so I wrote this
	program in Pascal, in DOS, as the DOS environment was the easiest
	way to emulate what I needed.
}


Var
	X,Y:Integer;
	D,DI:Integer;
	
	Ch:Char;
	Over:Array[char] of Boolean;
	Col:Byte;
	
function Max(A:Byte;B:Byte):Byte;
Begin
	if A>B then max:=A else Max:=B
end;
	
	
Function Done:Boolean;
Begin
	Done:=Over['<'] and Over['>'] and Over['^'] and Over['V']
End;

Procedure CUp;
Begin
	Col:=Max(1,(Col+1) mod 16)
end;
	
	
	
{Main}
Begin
	Ch:='>';
	X:=40;
	Y:=12;
	Over['<']:=False;
	Over['>']:=False;
	Over['^']:=False;
	Over['V']:=False;
	Col:=1;
	D:=1;
	DI:=D;
	ClrScr;
	Repeat
		TextColor(Col);
		if (X>=1) and (X<=79) and (Y>=1) and (Y<=25) then Begin
			GotoXY(X,Y);
			Write(Ch)
		end else if X<1 then
			Over['<']:=True
		else if X>79 then
			Over['>']:=True
		else if Y<1 then
			Over['^']:=True
		else if Y>25 then
			Over['V']:=True;		
		Case Ch of
			'<': Begin
					Dec(X);
					Dec(DI);
					if DI=0 then begin
						DI:=D;
						Ch:='^';
					end
				end;
			'^': Begin
					Dec(Y);
					Dec(DI);
					if DI=0 then Begin
						Inc(D);
						DI:=D;
						CH:='>';
						CUp
					end
				end;
			'>': Begin
					Inc(X);
					Dec(DI);
					if (DI=0) Then Begin
						DI:=D;
						Ch:='V';
					end
				end;
			'V': Begin
					Inc(Y);
					Dec(DI);
					if DI=0 then Begin
						Inc(D);
						DI:=D;
						CH:='<'
					end
				end;
		end;
		Delay(100);
	Until Done
End.
