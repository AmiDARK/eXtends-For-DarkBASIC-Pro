; *Src    = source 
; *Dst    = destination 
; bpCycle = bytes to copy per cycle 
; rSkip   = read skip value 
; wSkip   = write skip value 
; cycles  = number of cycles 

Procedure CopyMemoryM(*Src, *Dst, bpCycle, rSkip, wSkip, cycles) 
 ; push registers used 
 !push ecx 
 !push edx 
 !push esi 
 !push edi 
 !pushfd 
 ; retrieve some parameters 
 !mov ecx,[esp + 44] 
 !mov edx,[esp + 32] 
 !mov esi,[esp + 24] 
 !mov edi,[esp + 28] 
 ; exit if bpCycle or cycles are 0 
 !and ecx,ecx 
 !jz cmm_exit 
 !and edx,edx 
 !jz cmm_exit 
 ; main loop 
 !cmm_loop1: 
 !push edx 
 !cmm_loop2: 
 !mov al,[esi] 
 !mov [edi],al 
 !inc esi 
 !inc edi 
 !dec edx 
 !jnz cmm_loop2 
 !pop edx 
 !add esi,[esp + 36] 
 !add edi,[esp + 40] 
 !dec ecx 
 !jnz cmm_loop1 
 ; pop registers used and exit 
 !cmm_exit: 
 !popfd 
 !pop edi 
 !pop esi 
 !pop edx 
 !pop ecx 
EndProcedure 

; IDE Options = PureBasic v4.00 (Windows - x86)
; Folding = -