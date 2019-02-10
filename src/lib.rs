//! Silicon Errata Workaround for ARM Cortex R4/R4F
#![deny(missing_docs)]
#![deny(warnings)]
#![no_std]

/// Work Around for Errata CORTEX-R4#66:
///
/// #Errata Description:
///     Register Corruption During A Load-Multiple Instruction At
///     an Exception Vector
/// #Workaround:
///     Disable out-of-order completion for divide instructions
///     (bit 7) in Auxiliary Control register
#[inline]
pub unsafe fn errata66() {
    extern "C" {
        fn __r4_errata66();
    }
    __r4_errata66();
}

/// Work Around for Errata CORTEX-R4#57:
///
/// #Errata Description:
///     Conditional VMRS APSR_Nzcv, FPSCR May
///     Evaluate With Incorrect Flags
/// #Workaround:
///     Disable out-of-order single-precision floating point
///     multiply-accumulate instruction completion [BIT 16 (Set DOOFMACS)]
#[inline]
pub unsafe fn errata57() {
    extern "C" {
        fn __r4_errata57();
    }
    __r4_errata57();
}
