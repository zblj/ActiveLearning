
Basic OP Amp Configurations
############################

Objective
__________

In this lab we introduce the operational amplifier (op amp), an active circuit that is designed with certain characteristics (high input resistance, low output resistance, and a large differential gain) that make it a nearly ideal amplifier and useful building-block in many circuits applications. In this lab you will learn about DC biasing for active circuits and explore a few of the basic functional op amp circuits. We will also use this lab to continue developing skills with the lab hardware. 

Notes
__________

.. _hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _here: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2
.. _Oscilloscope: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Signal: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _generator: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html

In this tutorials we use the terminology taken from the user manual when referring to the connections to the Red Pitaya STEMlab board hardware_.
Oscilloscope_ & Signal_ generator_ application is used for generating and observing signals on the circuit. 
Extension connector pin used as 5V voltage source are show in the documentation here_. 

Materials
__________

- Red Pitaya STEMlab 125-14 or STEMlab 125-10 
- OPAMP:  1x AD8541 ( CMOS rail to rail amplifier )
- LED: 1x
- Resistor:  4x 1 :math:`k \Omega`
- Resistor:  3x 4.7 :math:`k \Omega`
- Resistor:  2x 10 :math:`k \Omega`
- Resistor:  1x 20 :math:`k \Omega`
- Capacitor: 1x 1 :math:`\mu F`

Op-Amp Basics
______________

.. _LM317: http://www.ti.com/lit/ds/symlink/lm317.pdf
.. _adjustable: http://www.ti.com/lit/ds/symlink/lm317.pdf
.. _regulator: http://www.ti.com/lit/ds/symlink/lm317.pdf
.. _E2: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2
.. _connector: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2

First Step: Connecting DC Power
--------------------------------
Op amps must always be supplied with DC power and therefore it is best to configure these connections first before adding any other circuit components. Figure 1 shows one possible power arrangement on your solder-less breadboard. We use two of the long rails for the positive supply voltage and ground. Using LM317_ adjustable_ regulator_ we provide 2.5 V mid supply rail that may be required. 

.. note::
     STEMlab boards do not have 2.5V DC output pin so we are using LM317 adjustable regulator to provide 2.5V DC rail from 5V one. 
     Connection of LM317 is very simple and described below. Equation for calculating output voltage is given as: 
     :math:`V_{out} = 1.25 \bigg( 1+\frac{R_2}{R_1} \bigg) \quad (1)`. 


Included are the so-called “supply de-coupling” capacitor connected between the power-supply and ground rails. It is too early to discuss in great detail the purpose of these capacitors, but they are used to reduce noise on the supply lines and avoid parasitic oscillations. It is considered good practice in analog circuit design to always include small bypass capacitors close to the supply pins of each op amp in your circuit. 

.. image:: img/Activity_13_Figure_1.png

Figure 1: Power connections using 5V power pin from E2_ connector_ and LM317_ adjustable_ regulator_

It is good practice to have power suply indication. For that we use LED connected to the 2.5V rail. If the voltage is present on this rail the LED will be ON. Since 2.5V is provided from 5V rail the same  LED will also indicate “OK” status of 5V power supply. Insert the LM317 and op amp into your breadboard and add the wires,resistors,led and supply capacitors as shown in figure 1. To avoid problems later you may want to attach a small label to the breadboard to indicate which rails correspond to +5 V, +2.5V and GND.

Next, attach the +5 V supply and GND connections from the STEMlab board to the terminals on your breadboard. Use jumper wires to power the rails. Remember, the power-supply GND terminal will be our circuit “ground” reference. Once you have your supply connections you may want to use a DMM to probe the IC pins directly to insure that pin 7 is at +5 V, pin 4 at 0 V (ground) and check 2.5 power rail.
Remember you must have the STEMlab powered up before measuring the voltages with the volt meter. 