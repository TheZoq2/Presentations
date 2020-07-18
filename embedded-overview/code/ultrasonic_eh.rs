use embedded_hal::{InputPin, OutputPin, Timer};

fn measure_distance<I, O>(
    timer: Timer,
    (trig, echo): (O, I)
) -> f32
where
    I: InputPin,
    O: OutputPin,
    T: Timer,
{
    // Same as before
}
