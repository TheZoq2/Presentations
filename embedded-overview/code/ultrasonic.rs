fn measure_distance(
    timer: Timer,
    (trig, echo): (PA0<Output>, echo: PA1<Input>)
) -> f32 {
    // Start pulse
    timer.start(10.ms())
    trig.set_high();
    timer.wait();
    trig.set_low();

    // Wait for return pulse to start
    while echo.is_low() {}

    // Measure return pulse length
    timer.start_measurement();
    while echo.is_high() {}

    return duration_to_distance(timer.elapsed())
}
