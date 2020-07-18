// Set up common structs (What startup_gpio() did)
let mut rcc = dp.RCC.constrain();

// Acquire and configure the GPIOC peripheral
let mut gpioc = dp.GPIOC.split(&mut rcc.apb2);

// Set the pin mode
let mut led = gpioc.pc13.into_push_pull_output(crh);
// Turn the led on
led.set_high()
