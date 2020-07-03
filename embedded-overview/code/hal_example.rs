// Set up common structs
let mut rcc = dp.RCC.constrain();
let clocks = rcc.cfgr.freeze(&mut flash.acr);

// Acquire and configure the GPIOC peripheral
let mut gpioc = dp.GPIOC.split(&mut rcc.apb2);
let crh = &mut gpioc.crh;

// Set the pin mode
let mut led = gpioc.pc1.into_push_pull_output(crh);
// Turn the led on
led.set_high()
