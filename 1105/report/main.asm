.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD
GetStdHandle PROTO, nStdHandle:DWORD
WriteConsoleA PROTO, hConsoleOutput:DWORD, lpBuffer:PTR BYTE, nNumberOfCharsToWrite:DWORD, lpNumberOfCharsWritten:PTR DWORD, lpReserved:DWORD

includelib kernel32.lib

.data
    message BYTE "2025964002구재민", 0
    written DWORD ?

.code
main PROC

    ; 콘솔 출력 핸들 가져오기
    INVOKE GetStdHandle, -11

    ; 문자열 출력하기
    INVOKE WriteConsoleA, eax, ADDR message, SIZEOF message - 1, ADDR written, 0

    ; 프로그램 종료
    INVOKE ExitProcess, 0

main ENDP
END main