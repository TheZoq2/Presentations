# Introduction

## Brief "earcatcher"

## Hello (physical) world

As with all programming, the best place to start is to say hello to the world.
But, today we are talking about hardware so it's even more true than usual.

The typical hello world example in electronics is to blink a LED so let's do
that. We will be using an arduino for that which together with the raspberry pi
is the defacto standard for hobby electroncs.

On both an arduino and a raspberry pi, we have a bunch of pins that we can
control in software. Most of them can be controlled arbitrarily or perform
special functions like communicating with peripherals. The Arduino uno has one
special pin, labeled 13 which in addition to being a general purpose pin has a
LED connected to it.

To program an arduino, you generally use the arduino IDE with the arduino
language, which for all intents and purposes is C++ and a bunch of libraries.

To make our LED glow, we need to do 2 things, tell the processor that pin 13 should
be used as an output, and tell it to turn the led on and off at in a loop.

Ok, we know the pin, let's launch the arduino IDE and do some programming

*Launch IDE, explain setup and loop*

There are three things we need to do in order to blink the LED. First, pins on
an arduino, and most other microcontrollers can have many states. They can be
inputs, outputs, analog inputs and some other things. So, the first thing we
have to do is configure the pin as an output. 

With that done, we can tell the pin to turn on, which is done by using
`digitalWrite(13, HIGH)`. Some devices use the high voltage level as on and the
low as off for power consumption reasons, so arduino doesn't call it on or off
but rather high and low. 

Ok, we have a glowing LED, let's make it blink! Just add a bool variable and use delay

## How does electricity work?

How many of you recognise ohms law?

(Hopefully most people answer yes) Good, then you know that electricity is
characterised by three quantities: voltage, current and resistance. More
voltage causes more current, more resistance causes less current and voltage
leads to current. However, luckily for us, most electroncs we deal with as
programmers don't really care much about current or resistance because we
almost exclusively deal with digital signals. So for now, we'll just ignore
current and resistance and focus on voltage.

First off, this explanation is probably not scientific, don't answer a question
on a physics exam with this, but it is useful for using electricity to do
stuff.

You may remember that voltage is a measure of electric potential, a high
voltage means that electricity wants to flow from that point to a point with a
low voltage. Now what does "a high" and "a low" voltage mean? The answer is
that voltage is relative, there is no absolute 0 and you can have both positive
and negative voltages.

This means that we have to *chose* reference voltage, a 0 point. This is
generally called ground and is usually a black wire. The reason that it is
called ground is that it is often connected to the earth which is a large
charged block with a charge that doesn't change. The earth isn't affected by
any charge we can throw at it. But, it doesn't have to be, a battery has what
we would call a ground, but it might have a completely different potential
because it has no physical connected to the earth.

The main thing to take away from this is that voltage is relative, which means
that unless two things have the same reference voltage, voltage is meaningless.
If you intend to communicate between two devices, connect their grounds.


So, to summarise, voltage is the potential current between two arbitrary
points, what we call 0 volts can be chosen arbitrarily as long as we are
consistent.

### Digital signals

But we work with computers, we want digital signals not this annoying unprecise
analog stuff. So, what do we do, well we make another arbitrary choise and say
that a certain voltage is a one and that another is 0, in almost all cases 0 is
0, seems logical, right? What's the advantage of this, well with our arbitrary
voltages selected, we can say that anything *close* to that voltage is 1 and 0
respectivly, we don't care if its 5.3 or 4.6 volts, it's still a one.

But, as always, when there is an arbitrary choise to be made, multiple choises
will be made and "standardised" and everyone will have to deal with the
consequenses. So, in the world of digital electronics, there are multiple
voltages that may represent one. It is almost always 3.3 volts or 5 volts but
there are rare devices which use things like 1.8 and 12 volts.

Now we all know electricity is a bit dangerous, at the voltages we deal with
here, they are not dangerous to us humans but they can hurt our fragile
seimconductors.  So, if you have a device that is made for 3.3 V and give it 5
V, either on it's power supply or on its inputs, you run the risk of *releasing
the magic smoke* which is what makes the device work in the first place makes
the device work in the first place.

So, in general, don't connect your 3.3 V devices to your 5 V devices (sensors
or microcontrollers) unless the 3.3V device is *5 volt tolerant*. Because
remember, voltages *close* to the '1' level are still 1. And 3.3V is *close* to
5 so from our digital, currentless world, they are compatible.


## Adding programming to the physical world

With that introcution out of the way, let's talk about something we are more
familiar with: programming and processors. While our every day computers have
physical outputs, like USB, headphone jacks (sometimes) or for ancient
computers parallel ports, those run complex protocols so we can't just connect
two USB pins to an LED and make it glow. Besides, internet of things would be a
lot less attractive than it already is if every device had to have a full
desktop computer in it.

Instead we use small processors that expose some digital, or analog inputs to
the world. The two most common such devices, at least in the hobbyist world are
raspberry pis and arduinos.

### Raspberry pi

How many of you have heard of/used a raspberry pi?

It is a small full fledged computer with an ARM CPU which has a couple of pins,
commonly refered to as general purpose input output or GPIO pins. These pins
are where it can interract with other electronics.

For better or for worse, it runs linux and you can use plenty of programming
languages on it. Python is the most well supported, especially with libraries
for different perihperals and sensors as I will talk about later but if you're
feeling adventurous, you can use other languages like C++, Javascript and Rust.


### Microcontrollers

Microcontrollers, (almost)
microscopic (for some definitions) processors purely designed for interracting
with the world and doing some calculations. Unlike the raspberry pi, and most
other computers we are used to, they don't run an operating system, as a
programmer, you are in full control ofthe hardware and your program is the only
thing running on there. In some cases this is good, you don't have to wait for
it to boot and your program can't be stopped in the middle of a calculation
because some other process needs the processor.

On the other hand, you have no help from an operating system. There is no
software on there for managing your memory, so malloc or anything else on the
heap can't be used without implementing it yourself. There is no display output
and no input. If your program crashes, there is nowhere to print an error
message, and if you missmanage your memory, there is no operating system there
to give you a segfault, you're on your own.


Typically, these devices run at 10 - 100 MHz with kilobytes of RAM compared
to the gigahertzs and gigabyte of ram we have the privilige of using on a
raspi.

The lack of a runtime and low amount of resources also means that languages
that need a runtime are hard to run. this means that microcontrollers almost
always run C, C++ or maybe if you really love rust, rust. There are some out
there that run lua or javascript, but they are few and far between.

### Arduino

I mentioned arduinos before, they are a class of microcontrollers which are
programmed using the arduino environment. The arduino environment is a set of
tools and libraries for microcontrollers which makes programming them much
easier. They are programmed in C++, almost always using the arduino IDE. These
tools make it easy to program microcontrollers and it means that you don't have
to read hundreds of pages of datasheets in order to use one device peripheral
or sensor.



### What to chose?

So, you are making a project and you need to chose a computer to power it,
which one should you chose? I would say you should start by looking at a
raspberry pi, having an OS is very nice and the extra performance over a
microcontroller might come in handy. However, it does have drawbacks:

- An OS that needs time to boot
- An OS that might interrupt your program
- Large physical size
- No analog inputs

It also has some advantages

- Built in Wifi and bluetooth
- Easy to debug and use
- Fast

## Pinouts

## Hello (Physical) world



### Same thing on a raspberry pi

The raspberry pi does not have an onboard user LED which means that in order to blink
one, we have to hook it up ourselves. 

#### LED
A LED is a Light emitting diode, like a diode, it only allows current to flow
in one direction, from the positive pin to the negative pin. If it does, the
LED will give off light.

So, since ground is 0, and a 'high' pin some positive voltage, all we have to
do is connect the negative side to ground and the positive side to some output
pin, right?

Not quite, LEDs will pull any current they can, but they can only take around
20 mA. Since they have very low resistance, they will pull the current and
break. We therefore need to add a resistor to limit the current. LEDs also have a voltage drop, 

#### Breadboards

Since we now have some discrete components, we need a way to hook them up to
each other.  We *could* manufacture a PCB or solder the wires together. But a
much more convenient way to do it is to use a breadboard, which looks like
this. *insert picture of breadboard*

A breadboard is a grid of holes where the rows are connected to each other
electrically. Most of them have a groove in the middle with no connections to
make it easier to hook up devices with pins on two sides, and some of them have
rails going down some columns on the left or right, for power.

In order to connect things on a breadboard, you use jumper cables. Just plug
one end into one column and another into another if you want to connect them.

Some devices, like the raspberry pi and arduino can't be directly connected to
a breadboard, but fear not, you can just use jumper cables there too. Though
for raspberry PIs, which have 'male' (pins sticking out) headers, you'll need
male to female connectors

So, this is how you would connect the LED:

Connect the negative, short pin to ground, the positive pin to one end of a
resistor and the other end of the resistor to the controlling pin.


## Input

Ok, we have some simple output, let's add some input. To start off, we'll just
use a push button.

First, let's try the following circuit, we have one side of the button connected to
an input pin, and the other one connected to 5v. When we press the button, the 5 v is applied to the input pin, and we should be able to read it.

This works when the button is pressed, but what happens when it's released? The answer is that we don't really know. Remember that voltage in a point is meaningless unless it's in reference to something else. In the case of an unconnected pin on a microcontroller,ground is defined, but the actual voltage on the pin is not.

The pin may act as a capcitor and store some charge from the last time it was connected to a fixed voltage, or it may pick up interference from other places. In fact, you can make a crude hand detector by just leaving an unconnected wire and reading the voltage on it.

### Push up and pull down resistors

The solution to this is to connect the pin, via a resistor to the non-pressed
voltage. When the button is realeased, all charge on the pin will quickly go
through the resistor, and the value of the pin will be fixed. When the button
is pressed, the pin is directly connected to the source which will set it back
to whatever the source is.

This is called a push pu resistor if it is connected to a high voltage, and
pull down if it is connected to ground

## Communication with peripherals

Single pin inputs are nice and all, but we probably want something more
advanced, and we want to communicate with other devices, like sensors. So, how
do we send bytes back and forth? At first you might think that since we already
have a way of representing 0 and 1, we could just send signals by changing
between those. However, it's not that easy, we want some way of saying that we
are now sending one byte, which is impossible with one signal.

You could connect 8 wires between the devices and just send one byte at a time,
but you would still have the same problem, how do you tell the difference
between 5 and 6 sequential bytes with the same value?

Luckily, this is kind of a solved problem, and somehow it is actually kind of standardised. There are three main protocols: UART, SPI, and I2c and I'll give a brief introduction to them now.

However, a lot of the time, you don't have to know the details, because both
arduinos and raspis have dedicated hardware and software for using them.
However, it is still useful to know the basics for debugging purposes.

### UART

UART uses two pins: transmit or tx and receive or rx. The tx pin of the host
should connect to the rx pin of the client. The protocol is timing based, when
idle the tx pin is high and when a byte should be sent, it is pulled low, this
is called the start bit. After that, each bit is transitted at a predefined
interval, followed by one or more stop bits and or parity bits.

The interval between bytes is defined by the baud rate, or bits per second,
which can be one of a bunch of different values. This depends on the device
you're trying to communicate with and is usually either 9600 or 115200 bps.

Only one device can be used per UART device

### SPI

In SPI, one device, usually your microcontroller is the master and it is
communicating with a slave. It uses three pins: clk, master in slave out (MOSI)
and master out slave in (MISO).

To use it, just connect clk to clk, miso to miso and mosi to mosi. When the
host wants to send and or receive data, it pulses the clock pin 8 times. Every
time the clock goes from high to low, it outputs one bit on MOSI and reads one
bit on MISO. Unlike UART, this means that a device can't send data unless the
host requests it 

Sometimes there is also a chip select pin involved. Then many devices are connected to the same SPI pins, and the master triggers the chip select pin on the device it wants to communiate with.

### I2C

The third protocol is called inter interconnected circuit, or i²c. It uses 2
pins: sda and scl which stand for data and clock. It also has a master and a
bunch of slave devices. All slave devices have a predefined address and when
the master wants to write or read from a slave, it sends that address on the
data line, similar to how SPI does it. When a slave sees its address on the
line, it sends back an acknowlege signal and listens to the masters commands.

The main advantage is that it allows a lot of devices on the same wire but it
is a bit more complex and hard to debug than the other protocols.

## Servos

*TODO*

## Let's make something!

## A reverse warning

A couple of times during this presentation, I have said thigns like "don't"
release the magic smoke, don't connect 5v to 3.3v, don't do this don't do that.

However, my experience is that electronics are way more tolerant than you would
think. Be careful, but don't be too afraid of doing something wrong. The
powersupplies we use have overcurrent protections and the electronics are
pretty tolerant. Don't go plugging the wrong things in on purpose, but don't
let a fear of breaking things stop you.

Of course, only take this advice when you're working with low voltages, you
till shouldn't stick a fork into a wall outlet.

## Troubleshooting

Inevitably, things will go wrong when you're playing around with electronics.
So, I thought i'd end todays presentation with some common symptoms, theier
cause and how to fix them

### Unreliable communication or signal

- Unconnected grounds
- Too long wires

### Sensor isn't replying

- Incorrectly hooked up
- Broken sensor
- Broken library
- Use an osciloscope if you can

### Microcontroller keeps restarting or doing weird stuff

Insufficient power

### Arduino program doesn't work

One of the downsides of arduinos is that they have no debugger and no OS that
catches obvious memor issues. The best way to debug things is to print messages
to the serial port




