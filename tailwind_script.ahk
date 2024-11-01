Needle := "Tailwind"
waitingSpan := 0
done := 0

+l::
done := 1
return

j::
Send {Shift down}
Loop, 50
{
	If(done = 0)
	{
		Send, ^c
		Sleep 50

		If InStr(clipboard, Needle)
		{
			Send {Shift up}
			MsgBox, Done
			ExitApp
		}
	    			
		Else
		{	
			Send {LButton}
		}
			
		Random, waitingSpan, 100, 300
		Sleep waitingSpan
	}

	Else
	{
		Send {Shift Up}
		ExitApp
	}
}
Send {Shift Up}
ExitApp
return