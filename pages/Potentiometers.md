- A [potentiometer](https://en.wikipedia.org/wiki/Potentiometer) is a circuit component with three terminals and a slider.
	- Here's an example of what one looks like:
	  ![Breadboard trim potentiometer](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjPizHo-etopg5FNNBs_VaJWLMcFvtP0v0J8ZyPBXWng&s=10){:height 128, :width 135}
		- In this example, the slider is actually a rotating knob, rather than a linear slider.
- A potentiometer has two main purposes:
	- It can provide a resistance that you can adjust on the fly using the slider.
	- It can measure the position of the slider.
- Two of the terminals are on either end of a strip of resistive material. The third (middle, usually) terminal is connected to the slider, which slides along that strip.
	- When using it as a variable resistor, you connect the slider terminal and one of the strip terminals to your circuit. As you move the slider along the strip, more or less resistive material is included in the circuit.
	- When using it as a position sensor, you connect the two strip terminals to voltage and ground, and you connect the slider terminal to something that can measure voltage drop to ground. As you move the slider along the strip, the slider terminal experiences more or less voltage drop to ground, depending on the amount of voltage drop that has already occurred across the entire strip.
- Because the strip is a fixed length and the rest of the component has a fixed amount of resistance in its circuit, a potentiometer always has a fixed minimum and maximum resistance it can take on, or anywhere in between.
- In circuit diagrams, a potentiometer is represented by these symbols:
  ![Potentiometer Symbols](https://imgs.search.brave.com/7z6BCKQcw4BYsgUOypjmdtf4gtOozmmnbylQi8kT2GM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/ZXRlaS5jb20vZmls/ZXMvdXBsb2Fkcy9l/ZGl0b3IvYi8yMDI1/MDYxMTExMjY0MXBv/dGVudGlvbWV0ZXIt/c3ltYm9scy53ZWJw){:height 237, :width 407}
	- The arrow represents the slider terminal.