startup_gpio()

// Set pin 13 as a push pull output
dp.GPIOC.crh.modify(|_r, w| {
    w
        .mode13().output()
        .cnf13().push_pull()
});

// Actually change the output
dp.GPIOC.odr.modify(|_r, w| {
    w.odr13().high()
});
