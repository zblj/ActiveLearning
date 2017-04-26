Diodes
#######

Objective
__________

The purpose of this activity is to investigate the current vs. voltage characteristics of various solid state PN junction diodes such as the conventional Si diode, the Schottky barrier diode, the Zener diode and Light emitting diode (LED). 

Notes
______

.. _hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _here: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2
.. _Oscilloscope: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Signal: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _generator: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html


In this tutorials we use the terminology taken from the user manual when referring to the connections to the Red Pitaya STEMlab board hardware_.
Extension connector pins used for **-3.3V** and **+3.3V** voltage supply are show in the documentation here_. 
Oscilloscope_ & Signal_ generator_ application is used for generating and observing signals on the circuit.

Background
__________

The PN junction diode is a device which is commonly used in circuit applications such as rectification where current is allowed to flow in only one direction. When the diode is fabricated in silicon, the forward voltage drop is typically 0.7 V and the :math:`{V_D}` vs. :math:`{I_D}` characteristic relating diode voltage and current can be described by an exponential relationship: 

.. math::

      I_D = I_S \bigg( e^{\frac{V_Dq}{nkT}} - 1  \bigg)   \quad (1)

where :math:`I_{S}` and n are scale factors, and :math:`kT/q` (25.4 mV at room temperature) is the so called thermal voltage :math:`{V_T}`. 

Diode schematic symbols
---------------------------

Each type of diode has a specific schematic symbol which are variations of the conventional diode symbol shown on the left in figure 1. A sort of “Z” shaped cathode denotes a zener diode as in the second symbol in figure 1. An “S” shaped cathode denotes a Schottky diode as in the next symbol. The arrows pointing away from the diode denotes an LED as in the symbol on the right. Arrows pointing toward the diode would represent a photo diode light detector. 


.. image:: img/Activity_19_Figure_1.png

Figure 1: Diode schematic symbols 

Zener Diode Fundamentals
---------------------------

A Zener diode is similar in construction and operation to an ordinary diode. Unlike a conventional diode where the intended use is to prevent current in the reverse direction, a zener diode is mostly used in the reverse region above the breakdown voltage. Its :math:`I` vs, :math:`V` characteristic curve is similar to ordinary diode. By adjusting the doping of the P and N sides of the junction, it is possible to design a Zener diode that breaks down at anywhere from a few volts to a few hundred volts. See Figure 2. In this breakdown or zener region the diode voltage will remain approximately constant over a wide range of currents. The maximum reverse-bias potential that can be applied before entering the Zener region is called the Peak Inverse Voltage (PIV) or the Peak Reverse Voltage (PRV). 

.. image:: img/Activity_19_Figure_2.png

Figure 2: Forward and reverse zener diode :math:`I/V` characteristic

At voltages above the onset of breakdown, an increase in applied voltage will cause more current to flow in the diode, but the voltage across the diode will stay very nearly at :math:`V_Z`. A Zener diode operated in reverse breakdown can provide a reference voltage for systems like voltage regulators or voltage comparators. 

Schottky Diode Fundamentals
----------------------------

A Schottky barrier diode uses a rectifying metal-semiconductor junction formed by plating, evaporating or sputtering one of a variety of metals onto n-type or p-type semiconductor material. Generally, n-type silicon and n-type GaAs are used in commercially available Schottky diodes. The properties of a forward biased Schottky barrier diode are determined by majority carrier phenomena. A conventional PN junction diode's properties are determined by minority carriers. Schottky diodes are majority carrier devices that can be switched rapidly from forward to reverse bias without minority carrier storage effects.

The normal current vs. voltage :math:`I/V` curve of a Schottky barrier diode resembles that of a PN junction diode with the following exceptions: 

1. The reverse breakdown voltage of a Schottky barrier diode is lower and the reverse leakage current higher than those of a PN junction diode made using the same resistivity semiconductor material.
2. The forward voltage at a specific forward current is also lower for a Schottky barrier diode than for a PN junction diode. For example, at 2 mA forward bias current a low barrier silicon Schottky diode
   will have a forward voltage of ~0.3 volts while a silicon PN junction diode will have a voltage of ~0.7 volts. This lower forward voltage drop can cut the power dissipated in the diode by more than one half. This power savings can be very significant when the diodes need to carry large forward currents. The current vs. voltage (:math:`I/V`) relationship for a Schottky barrier diode is given by the following equation known as the Richardson equation. The primary difference from the conventional diode equation is in :math:`I_S` with the addition of the modified Richardson constant :math:`A^*`. 


.. math::

      I_D = I_S \bigg( e^{\frac{V_Dq}{nkT}} - 1  \bigg)   \quad (2)

.. math::

      I_S = A A^* T^2 e^{-\frac{q \Phi B}{kT}}   \quad (3)

Where:

* :math:`A` = junction area
* :math:`A^*` = modified Richardson constant (value varies by material and dopant) = :math:`110 A/(°K^2-cm^2)`  for n-type Si
* :math:`T` = absolute temperature in :math:`K` (Kelvins)
* :math:`q` = electronic charge  = :math:`1.6E-19 \quad C` 
* :math:`\Phi B` = barrier height in volts k = Boltzman's constant = 1.37 * 10-23 J/K = :math:`1.37E-23 \quad J/K`
* :math:`n` = ideality factor (forward slope factor, determined by metal-semiconductor interface) 


LED Fundamentals
-----------------

The LED is a junction diode that emits light when forward biased. Actually all PN junction diodes emit photons when forward biased, it is just that the photons are in the infrared band and the physical shape of the diode does not allow the photons to escape the package. To achieve the visible light emitting property, it is necessary to fabricate the LED from materials with larger band-gaps other than silicon. As a result, the forward voltage drop of the LED is greater than 0.7V; usually on the order of 1.5 to 2 volts depending on the wavelength of the emitted light. The LED is also built in a special transparent package as shown in figure 3. 


.. image:: img/Activity_19_Figure_3.png

Figure 3: Light emitting diodes 

An LED is a semiconductor device that emits electromagnetic radiation at optical and infrared frequencies. The device is a PN junction diode made from p-type and n-type semiconductors, usually GaAs, GaP or SiC. They emit light only when an external applied voltage is used to forward bias the diode above a minimum threshold value. The gain in electrical potential energy delivered by this voltage is sufficient to force electrons to flow out of the n-type material, across the junction barrier, and into the p-type region. This threshold voltage for the onset of current flow across the junction and the production of light is :math:`V_0`. The emission of light occurs after electrons enter into the p-region (and holes into the n-region). These electrons are a small minority surrounded by holes (essentially the anti-particles of the electrons) and they will quickly find a hole to recombine with. Energetically, the electron relaxes from the excited state (conduction band) to the ground state (valence band). The diodes are called light emitting because the energy given up by the electron as it relaxes is emitted as a photon. Above the threshold value, the current and light output increases exponentially with the bias voltage across the diode. The quanta of energy or photon has an energy E = hf. The relation between the photon energy and the turn-on voltage :math:`V_0`, is: 

.. math::
      
      eV_0 = E_g = hf = \frac{hc}{\lambda} \quad (4)

where:

* :math:`E_g` is the size of the energy gap
* :math:`V_0` is the threshold voltage
* :math:`f` and :math:`\lambda` are the frequency and wavelength of the emitted photons
* :math:`c` is the velocity of light
* :math:`e` is the electronic charge
* :math:`h` is Planck's constant 

Experiments
____________