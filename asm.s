  .section .text.__r4_errata66
  .global __r4_errata66
__r4_errata66:
  mrc p15, #0, r0, c1, c0, #1
  orr r0, r0, #0x80
  mcr p15, #0, r0, c1, c0, #1
  bx lr

  .section .text.__r4_errata57
  .global __r4_errata57
__r4_errata57:
  mrc p15, #0, r0, c15, c0, #0
  orr r0, r0, #0x10000
  mcr p15, #0, r0, c15, c0, #0
  bx lr

