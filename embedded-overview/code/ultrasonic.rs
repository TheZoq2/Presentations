fn measure_distance(
    timer: Timer,
    (trig, echo): (PA0<Output>, echo: PA1<Input>)
) -> f32 {
    // Start pulse
    trig.set_high();
    timer.wait(10.ms());
    trig.set_low();

    // Wait for return pulse to start
    while echo.is_low() {}
    timer.start_measurement();
    // Wait for pulse to end
    while echo.is_high() {}
    return duration_to_distance(timer.elapsed())
}
