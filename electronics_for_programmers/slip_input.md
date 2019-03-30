theme: ../cleaver-light

---


# Hello, (physical) world


--

### Arduino

```c++
void setup() {
    
}

void loop() {
    
}
```

--

### Arduino

```c++
const LED_PIN = 13;

bool led_state;

void setup() {
    pinMode(LED_PIN, Output);
}

void loop() {
    led_state = !led_state;
    if(led_state) {
        digitalWrite(LED_PIN, High);
    }
    else {
        digitalWrite(LED_PIN, Low);
    }
    delay(1);
}
```

--

# Introduction to electronics

--

### Ohms Law

[[(animated)
- More voltage -> More current
>>
- More resistance -> Less current
>>

But, we don't really have to care. In digital circuits, voltage is all that matters
]]


--

### Voltage

Disclaimer: i'm simplifying, physicists may get angry.


--

### Voltage

[[(animated)
- Voltage is a measure of electric potential
>>
- High voltage -> flow of charge (current) to lower voltage
>>
- Everything is relative, including voltage
- We choose what a "high" voltage is by chosing what 0 volts is
>>
- The zero point is called "ground", because the earth can absorbe any charge us puny humans throw at it
>>
- Voltage is meaningless uneless there is a common reference
>>
    - **Connect your grounds**
]]

--

## Digital signals

[[(animated)
- Analog is unprecise and error prone
    - We don't want data to degrade because we used a long wire.
>>
- Let's make more arbitrary choices!
>>
- 0V is 0, some other voltage is 1
    - Round anything in between
]]

--

<img src="resources/digital.svg" style="width: 100%;">

--

<img src="resources/digital_with_both.svg" style="width: 100%;">

--

<img src="resources/digital_with_signal.svg" style="width: 100%;">


--

### What is 'high'

![](https://imgs.xkcd.com/comics/standards.png)

[[(animated)
>>
- 1.8 V
- **3.3 V**
- **5 V**
- 12 V
>>

Don't mix and match, keep the magic smoke inside the chips!
>>

]]


--

# Programming electronics

--

### Programming electronics

We need something that

- can directly control electronics
- is embedable
- is cheap
- doesn't use much power

--

### Raspberry PI

<img src="resources/raspi.png" style="float: right; width: 50%">

[[(animated)
>>
- Full fledged computer
>>
- GPIO pins
>>
- Runs linux
]]

--

### Microcontrollers

[[(animated)
- Purely designed for physical interraction
>>
- Slower
    - 10-100 MHz
    - Low amounts of RAM
>>
- No operating system
    - Full control
    - No interrupts
    - No safeguards
    - No heap
>>
]]


--

### Arduino

A family of microcontrollers with common hardware and software to make embedded
deveolopment approachable.

<img src='resources/arduino.png' style='float:right; width:55%;'>

[[(animated)
>>
- Programmed in C++
>>
- Using the arduino IDE
>>
- Libraries for most peripherals
]]

--

### What to chose

[[(animated)
>>
Advantages of a raspberry PI:

>>
- Built in Wifi and bluetooth
>>
- Plenty of linux tools
>>
- Easy to debug
>>
- Fast
>>
- Programmable in most languages

>>
And some disadvantages:

>>
- Needs some time to boot
>>
- No timing guarantees
>>
- Relatively large
>>
- No analog inputs
]]


--

### An LED on a Raspberry pi

No on-board LED, we'll have to make our own

[[(animated)
<img src='resources/led_no_resistor.png' style='width:80%;'>
>>
- LEDs will use any current they can
>>
- But they can only take a few milliamps
>>
<img src='resources/led_with_resistor.png' style = 'width:80%;'>
]]


--

### Ohms law again

I lied, we need it for this

[[(animated)
>>
- LEDs have a voltage drop
    - Depends on the colour, but typically ~2-3 V
]]

--

### Hooking things up

<img src='resources/breadboard.png' style='float:left;'>


<img src='resources/jumper_wires.png' style='float:right; width:450px;'>

<img src='resources/led.png' style='float:right; width:450px;'>


--

### Where to hook things up?

- Pinouts
- Datasheets


--

## Input



--

# Communication

--


### Encoding data

What's the difference between 1 and 111111?

[[(animated)
>>
- Predefined time for bits
>>
- Other wire that says "there is data"
>>
- There are standard protocols

>>

Libraries usually handle this for you
]]

--


### Protocol 1: UART (Universal asyncronous receiver-transmitter)

- TX and RX pins
- TX -> RX, RX->TX
- Baud rate, usually (9600 or 115200)

A nice graphic!

--

### Protocol 2: SPI (Serial Peripheral Interface)

[[(animated)
- CLK/SCK
- MOSI (Master Out Slave In)
- MISO (Master In Slave Out)
>>
- Sometimes chip select
]]

--

### Protocol 3: **I**inter **I**nterconnected **Circuit** I²C

[[(animated)
- SCL (Clock)
- SDA (Data)
>>

- One *master*, multiple *slaves* on the same bus
- Address of target starts communication
]]


## 












