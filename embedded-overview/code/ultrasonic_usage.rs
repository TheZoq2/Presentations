// Set up structs
let (rcc, gpioa) = initial_setup()

// Configure our pins
let trig = gpioc.pa0.into_push_pull_output(gpioa.crh);
let echo = gpioc.pa1.into_input(gpioa.crh);
// Configure our timer
let timer = dp.TIM1.setup();

// Use the driver
measure_distance(timer, (trig, echo))
