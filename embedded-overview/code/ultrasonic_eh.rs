use embedded_hal::{InputPin, OutputPin}

fn measure_distance<I: InputPin, O: OutputPin>(
    timer: Timer,
    (trig, echo): (O, I)
) -> f32 {
    // Same as before
}
