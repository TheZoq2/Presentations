startup_gpio()

const GPIOC_START: usize = 0x4001_1000;
const CRH_OFFSET: usize = 0x04;
const ODR_OFFSET: usize = 0x0C;

const OUTPUT_MODE: u32 = 0x01;
const PUSH_PULL: u32 = 0x10;

unsafe {
    *((GPIOC_START + CRH_OFFSET) as *mut u32) =
        (OUTPUT_MODE << 20) | (PUSH_PULL << 22);

    *((GPIOC_START + ODR_OFFSET) as *mut u32) =
        1 << 13;
}
