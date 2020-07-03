// Set up structs
let mut rcc = dp.RCC.constrain();
let clocks = rcc.cfgr.freeze(&mut flash.acr);
let mut gpioa = dp.GPIOA.split(&mut rcc.apb2);
let crh = &mut gpioa.crh;

// Configure our pins
let trig = gpioc.pa0.into_push_pull_output(crh);
let echo = gpioc.pa1.into_input(crh);
// Configure our timer
let timer = dp.TIM1.setup();

// Use the driver
measure_distance(timer, (trig, echo))
