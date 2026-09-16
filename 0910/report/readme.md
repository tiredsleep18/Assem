**Assembly Language for x86 Processors (7th Edition)** 교재의 **Chapter 2.8 Review Questions** (2장 복습 문제 26문항)에 대한 풀이 및 해설입니다.

---

### **Chapter 2.8 Review Questions 풀이**

1. **In 32-bit mode, aside from the stack pointer (ESP), what other register points to variables on the stack?**
   * **답:** **EBP** (Extended Base Pointer)
   * **해설:** EBP 레지스터는 스택 프레임의 베이스 포인터로 사용되어 스택에 전달된 매개변수와 지역 변수를 가리키는 데 사용됩니다.

2. **Name at least four CPU status flags.**
   * **답:** **Carry flag (CF)**, **Overflow flag (OF)**, **Sign flag (SF)**, **Zero flag (ZF)** (이 외에도 **Parity flag (PF)**, **Auxiliary Carry flag (AC)** 포함).

3. **Which flag is set when the result of an unsigned arithmetic operation is too large to fit into the destination?**
   * **답:** **Carry flag (CF)**
   * **해설:** 부호 없는(unsigned) 연산 결과가 목적지 레지스터/메모리의 표현 범위를 초과할 때 캐리 플래그가 설정됩니다.

4. **Which flag is set when the result of a signed arithmetic operation is either too large or too small to fit into the destination?**
   * **답:** **Overflow flag (OF)**
   * **해설:** 부호 있는(signed) 연산 결과가 범위를 벗어나 오버플로 또는 언더플로가 발생할 때 오버플로 플래그가 설정됩니다.

5. **(True/False): When a register operand size is 32 bits and the REX prefix is used, the R8D register is available for programs to use.**
   * **답:** **True (참)**
   * **해설:** 64비트 모드에서 REX 접두사를 사용하면 32비트 오퍼랜드 크기일 때 추가된 R8D~R15D 레지스터를 사용할 수 있습니다.

6. **Which flag is set when an arithmetic or logical operation generates a negative result?**
   * **답:** **Sign flag (SF)**
   * **해설:** 연산 결과의 최상위 비트(MSB)가 1이 되어 음수가 될 때 사인 플래그가 설정됩니다.

7. **Which part of the CPU performs floating-point arithmetic?**
   * **답:** **FPU (Floating-Point Unit)**
   * **해설:** 부동소수점 연산 전용 장치인 FPU가 담당합니다.

8. **On a 32-bit processor, how many bits are contained in each floating-point data register?**
   * **답:** **80비트**
   * **해설:** FPU의 데이터 레지스터 ST(0)~ST(7)은 각각 80비트(Extended-Precision) 크기를 가집니다.

9. **(True/False): The x86-64 instruction set is backward-compatible with the x86 instruction set.**
   * **답:** **True (참)**
   * **해설:** x86-64 명령어 집합은 기존 32비트 x86 명령어 집합의 64비트 확장이며 하위 호환성을 지원합니다.

10. **(True/False): In current 64-bit chip implementations, all 64 bits are used for addressing.**
    * **답:** **False (거짓)**
    * **해설:** 이론적으로는 64비트 주소가 가능하지만, 현재 하드웨어 구현체에서는 주소 지정에 48비트만 사용합니다.

11. **(True/False): The Itanium instruction set is completely different from the x86 instruction set.**
    * **답:** **True (참)**
    * **해설:** Intel Itanium(IA-64) 구조는 기존 x86과 완전히 다른 아키텍처입니다.

12. **(True/False): Static RAM is usually less expensive than dynamic RAM.**
    * **답:** **False (거짓)**
    * **해설:** SRAM(정적 RAM)은 DRAM(동적 RAM)보다 속도가 빠르지만 가격이 훨씬 비쌉니다.

13. **(True/False): The 64-bit RDI register is available when the REX prefix is used.**
    * **답:** **True (참)**
    * **해설:** REX 접두사가 활성화된 64비트 모드에서 64비트 RDI 레지스터를 사용할 수 있습니다.

14. **(True/False): In native 64-bit mode, you can use 16-bit real mode, but not the virtual-8086 mode.**
    * **답:** **False (거짓)**
    * **해설:** 네이티브 64비트 모드(Long mode)에서는 16비트 실주소 모드와 가상 8086 모드 모두 지원되지 않습니다.

15. **(True/False): The x86-64 processors have 4 more general-purpose registers than the x86 processors.**
    * **답:** **False (거짓)**
    * **해설:** x86-64 프로세서는 기존 8개에서 8개가 추가되어 총 16개의 범용 레지스터(RAX~RBP 및 R8~R15)를 갖습니다.

16. **(True/False): The 64-bit version of Microsoft Windows does not support virtual-8086 mode.**
    * **답:** **True (참)**
    * **해설:** 64비트 Windows 환경은 가상 8086 모드를 지원하지 않습니다.

17. **(True/False): DRAM can only be erased using ultraviolet light.**
    * **답:** **False (거짓)**
    * **해설:** 자외선(UV)으로 데이터를 지우는 메모리는 EPROM이며, DRAM은 전하를 유지를 위해 동적으로 리프레시되는 전휘발성 메모리입니다.

18. **(True/False): In 64-bit mode, you can use up to eight floating-point registers.**
    * **답:** **True (참)**
    * **해설:** FPU에는 8개의 80비트 부동소수점 데이터 레지스터(ST0~ST7)가 제공됩니다.

19. **(True/False): A bus is a plastic cable that is attached to the motherboard at both ends, but does not sit directly on the motherboard.**
    * **답:** **False (거짓)**
    * **해설:** 버스(Bus)는 메인보드 표면에 에칭되어 구성 요소 간 데이터를 전송하는 신호선(병렬 배선)입니다.

20. **(True/False): CMOS RAM is the same as static RAM, meaning that it holds its value without any extra power or refresh cycles.**
    * **답:** **False (거짓)**
    * **해설:** CMOS RAM은 시스템 세팅 정보를 유지하기 위해 메인보드의 작은 배터리 전원을 지속적으로 소비합니다.

21. **(True/False): PCI connectors are used for graphics cards and sound cards.**
    * **답:** **True (참)**
    * **해설:** PCI 슬롯은 그래픽 카드, 사운드 카드, 네트워크 카드 등의 확장 장치 연결에 사용됩니다.

22. **(True/False): The 8259A is a controller that handles external interrupts from hardware devices.**
    * **답:** **True (참)**
    * **해설:** 8259A PIC(Programmable Interrupt Controller)는 키보드, 타이머 등 외부 하드웨어 인터럽트를 제어합니다.

23. **(True/False): The acronym PCI stands for programmable component interface.**
    * **답:** **False (거짓)**
    * **해설:** PCI의 약자는 **Peripheral Component Interconnect**입니다.

24. **(True/False): VRAM stands for virtual random access memory.**
    * **답:** **False (거짓)**
    * **해설:** VRAM의 약자는 **Video Random Access Memory**입니다.

25. **At which level(s) can an assembly language program manipulate input/output?**
    * **답:** **Level 0, Level 1, Level 2, Level 3 (모든 계층)**
    * **해설:** 어셈블리 언어는 하드웨어 포트 직접 제어(Level 0), BIOS 함수 호출(Level 1), OS 시스템 콜(Level 2), 라이브러리 함수 호출(Level 3) 등 모든 계층에서 I/O를 수행할 수 있는 유연성을 제공합니다.

26. **Why do game programs often send their sound output directly to the sound card’s hardware ports?**
    * **답:** **상위 운영체제나 BIOS 계층을 거칠 때 발생하는 오버헤드를 줄여 실행 속도를 극대화하고, 정밀한 타이밍과 하드웨어 제어를 얻기 위해서입니다.**

---

🔍 각 문제에 대한 추가적인 레지스터 동작 방식이나 메모리 보호 모드에 대한 질문이 있다면 알려주세요!
