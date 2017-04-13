OPAMP Open Loop Gain
#########################

Objective
__________

The objective of this experiment is to measure  the open‐loop gain characteristics of a OP27 opamp.

Notes
__________

.. _hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _here: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2
.. _Oscilloscope: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Signal: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _generator: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html

In this tutorials we use the terminology taken from the user manual when referring to the connections to the Red Pitaya STEMlab board hardware_.
Oscilloscope_ & Signal_ generator_ application is used for generating and observing signals on the circuit. 
Extension connector pins used for **-3.3V** and **+3.3V** voltage supply are show in the documentation here_. 

Materials
__________

- **Red Pitaya STEMlab 125-14**. An Red Pitaya STEMlab 125-10 is not suitable for this measurement due to ADC resolution!
- OPAMP:  1x OP27
- OPAMP:  1x OP97 
- Resistor:  2x 100 :math:`\Omega`
- Resistor:  2x 200 :math:`k \Omega`
- Resistor:  1x 100 :math:`k \Omega`
- Capacitor: 2x 0.1 :math:`\mu F`
- Capacitor: 1x 10 :math:`\mu F`


Background
__________

.. _OP27: http://www.analog.com/media/en/technical-documentation/data-sheets/OP27.pdf
.. _tutorial: http://www.analog.com/media/en/training-seminars/tutorials/MT-044.pdf

Unlike the ideal op amp, a practical op amp has a finite gain. The open-loop DC gain (usually referred to as :math:`A_{VOL}` and sometimes as **forward gain**) is the gain of the amplifier without the feedback loop being closed, hence the name “open-loop.” For a precision op amp this gain can be very high, on the order of 160 dB (100 million) or more. The open loop gain of the OP27_ amplifier is arround 1.8 million. 

.. image:: img/Activity_14_Figure_1.png

Figure 1: OP27 datasheet and Open Loop Gain value marked

The definition of open-loop gain is

.. math::
     A_{OL} = \frac{V_{out}}{( V^+ − V^− )} \quad (1)

where :math:`(V^+ − V^−)` is the input voltage difference :math:`V_d` that is being amplified, :math:`V^+` a voltage on noninverting input and :math:`V^-` voltage on inverting input.




Voltage feedback op amps operate as a **voltage in / voltage out** amplifier and the open-loop gain is a **dimensionless ratio**, so no units are necessary. However, data sheets sometimes express gain in 
:math:`V/mV` or :math:`V/ \mu V` instead of :math:`V/V`, for the convenience of using smaller numbers. Or, voltage gain can also be expressed in :math:`dB` terms, as gain in 

.. math::
    Gain \quad in \quad dB = 20log(A_{VOL})  \quad (2) 

.. note::

	Thus an open-loop gain of 
	
	.. math:: 1V/ \mu V \quad = \quad   1  \quad million V/V  \quad = \quad 120 dB, \quad etc. 

	Be sure to read through the tutorial_ on Open Loop Gain and Open Loop Gain Nonlinearity before doing these experiments. 