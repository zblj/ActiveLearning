Current Sensing using a Difference Amplifier
#############################################


Objective
__________

The objective of this lab activity is to investigate current sensing techniques that use an op-amp configured as a difference amplifier. 

Notes
_____

.. _hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _here: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2
.. _Oscilloscope: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Signal: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _generator: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _amplifier: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier
.. _difference: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity16_DifferenceAmplifier.html#difference-amplifier


In this tutorials we use the terminology taken from the user manual when referring to the connections to the Red Pitaya STEMlab board hardware_.
Extension connector pins used for **-3.3V** and **+3.3V** voltage supply are show in the documentation here_. 
Oscilloscope_ & Signal_ generator_ application is used for generating and observing signals on the circuit.

Background
__________


We have investigated the difference_ amplifier_. Now we will use it as a current sense amplifier. One of the major applications of the op-amp difference amplifier is in measuring the current at point in a circuit other than where it flows into or out of ground or the common node. The current to be measured is converted into a small voltage by breaking open the current path and inserting a low value resistor in series. This resistor is called a current shunt resistor or just shunt. The resistance is kept small and the voltage drop across the shunt small to reduce any effect this change might have on the operation of the circuit. 
Current going through shunt resistor therefore path current is given as

.. math::
     
    I_{path} = I_{shunt} = \frac{\Delta V}{R_{shunt}} \quad (1)

Since differential voltage across resistor (given as :math:`\Delta V = V_{R_{shunt_{node_1}}}-V_{R_{shunt_{node_2}}})` should be measured we can see that a difference amplifier is an ideal circuit for that task. The small differential voltage drop across the shunt is amplified and converted to a single ended (common referenced) voltage by an op-amp difference amplifier. 