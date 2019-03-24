# Introduction

## Brief "earcatcher"

## Self introduction

## A look into the future

This will be the structure of the presentation:

- Simple electronics (how is a signal represented, what is voltage, what is ground)
- Microcontrollers
- Hello physical world (blinking a light)
- Input, pull up/down resistors
- Sensors
- Communication protocols

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
charged block with a charge that doesn't change. But, it doesn't have to be, a
battery has what we would call a ground, but it might have a completely
different potential because it has no physical connected to the earth. This is
called a floating ground.


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

### Analog signals

While we can usually hide out in our digital world, sometimes we need to deal
with analog stuff as well, generally for reading sensors. Most of the time, you
get an analog to digital converter or ADC to do that for you. This takes an
analog signal, a continuous voltage and gives it to you in a digital form.
Sometimes they are integrated in your processor, like in arduinos, and
sometimes they are discrete components that talk some digital protocol.

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

It also has some advantages

- Built in Wifi and bluetooth
- Easy to debug and use
- Fast

And some disadvantages

- An OS that needs time to boot
- An OS that might interrupt your program
- Large physical size
- No analog inputs

## Hello (Physical) world

With all of that said, we can finally get on to some actual programming, yay!

The hello world of embedded development is generally a blinking LED, so let's get started with that. The arduino uno board, the "classic" arduino, has a built in LED which allows us to skip hooking up hardware for this first example.

So, in order to blink the LED, we first need to know where it is connected, this information is called pinout and can usually be found by searching for the device we want to know the pinout for, followed by the word pinout. This looks a bit complex, but if you roughly know what you're looking for, you should be able to find things.

*Find LED symbol and pin 13*

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


### Same thing on a raspberry pi

using python.

Ohms law comes into play, sorry, I lied

### Breadboards

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

## Communication with sensors



