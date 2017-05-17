The MOS transistor connected as a diode
#########################################

Objective
__________

The purpose of this experiments is to investigate the forward current vs. voltage characteristics of a MOS field effect transistor (NMOS and PMOS) connected as a diode. Before doing this experiment overview of previous experiment is recommended_.


Notes
______

.. _hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _Oscilloscope: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Signal: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _generator: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _here: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2
.. _simple: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity20_DiodeRectifiers.html
.. _rectifier: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity20_DiodeRectifiers.html
.. _OP484: http://www.analog.com/media/en/technical-documentation/data-sheets/OP184_284_484.pdf
.. _inverting: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#inverting-amplifier
.. _Jupyter: http://jupyter.org/index.html
.. _Notebook: http://jupyter.org/index.html
.. _ZVN211: http://www.redrok.com/MOSFET_ZVN2110A_100V_320mA_4O_Vth2.4_TO-92_ELine.pdf
.. _ZVP211: https://www.diodes.com/assets/Datasheets/ZVP2110A.pdf
.. _recommended: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity22_TheBJTasDiode.html

In this tutorials we use the terminology taken from the user manual when referring to the connections to the Red Pitaya STEMlab board hardware_.
Oscilloscope_ & Signal_ generator_ application is used for generating and observing signals on the circuit.
Extension connector pins used for **-3.3V** and **+3.3V** voltage supply are show in the documentation here_. 

.. note:: 
   Red Pitaya STEMlab outputs can generate voltage signals with maximal output range of +/- 1V (2Vpp). For this experiment the higher signal amplitudes are required. Because of that we will use an OP484_ in the inverting_ opamp configuration to enable OUT1/OUT2 signal amplification achieving voltage swing between +4.7V  to -3.2V. An OP484 will be supplied from STEMlab +5V and -3.3V voltage rails. Gain of the inverting amplifier will be set to ~5, where :math:`R_i  = 2.2k \Omega` and :math:`R_f  = 10k \Omega` 
   Try to answer why we have used an OP484 instead for example OP27 or OP97. (hint "rail-to-rail").  

Materials
----------

- Red Pitaya STEMlab 
- 1x OP484_ quad rail-rail op-amp
- 1x 1kΩ Resistor
- 1x small signal NMOS transistor (ZVN211_)
- 1x small signal PMOS transistor (ZVP211_)
- 1x Solder-less Breadboard

NMOS as a diode
----------------

Connection of the NMOS in diode configuration is shown figure 2. NMOS operate different than the NPN BJT transistor in a diode configuration. 
Forward drop down voltage will not be typical 0.7V but it is dependent on transistor size, specification etc. For selected NMOS transistor the 
so called threshold voltage :math:`V_{TH}` is around 2.4V.This mean when the Gate (G) voltage exceed :math:`V_{TH}` the transistor will be turned ON and start conducting. Of course since Drain (D) pin is connected to the Gate pin of the transistor the potential of the :math:`D-G` will stay at the level of the threshold voltage :math:`V_{TH}`. 

.. note::
    This configuration of NMOS will effectively produce a diode with forward drop voltage equal to the :math:`V_{TH}`


.. image:: img/Activity_23_Figure_1.png

Figure 1:  ZVN211_ specifications

On the breadboard build the circuit from figure 2 and proceed withe the measurements.


.. image:: img/Activity_23_Figure_2.png

Figure 2:  NMOS diode connection diagram 


Procedure
----------

1. Build the circuit from figure 1 on the breadboard. Set R1=2.2kΩ, R2=10kΩ and R3=1kΩ. For M1 take ZVN211.

.. image:: img/Activity_22_Figure_3.png

Figure 3:   NMOS diode connection on the breadboard 

.. warning::
      Before connecting the circuit to the STEMlab -3.3V and +3.3V  pins double check your circuit. The  -3.3V and +3.3V  voltage supply pins do not have short circuit handling and they can be damaged in case of short circuit.

2. Start the Oscilloscope & Signal generator application
3. In the OUT1 settings menu set Amplitude value to 0.45V, DC offset to -0.45 V, Frequency to 1kHz to apply the input voltage. 
   From the waveform menu select TRIANGLE, deselect SHOW and select enable.
4. On the left bottom of the screen be sure that  IN1, IN2 and MATH V/div are set to 1V/div (You can set V/div by selecting the desired 
   channel and using vertical +/- controls)
5. Set t/div value to 200us/div (You can set t/div using horizontal +/- controls)
6. Under MATH channel settings set :math:`IN1-IN2` and select ENABLE.
7. Under IN1 and IN2 menu settings set probe to x10 and vertical offset to 0.
8. Under MATH menu settings set vertical offset to 0.
9. Under TRIGER settings, set trigger level to 1V



.. image:: img/Activity_23_Figure_4.png

Figure 4: NMOS diode connection measurements

VI curve measurements
---------------------- 

Since NMOS can behave as an diode with forward voltage equal to the :math:`V_{TH}` (configuration shown on figure 2) we can measure its VI characteristic as we did when performing diode measurements.For this task we will use Jupyter Notebook Web application. How to start Jupyter Notebook and create new project is shown on figure 5 flow chart.

.. note::

     The Jupyter_ Notebook_ is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. They have also ensured support for the Jupyter application with Red Pitaya libraries enabling control of all features of the STEMlab boards such as: signal acquisition, signal generation, digital signal control, communication etc. The Jupyter Notebook is started on the same way as any other applications. After starting Jupyter application a web based notebook is opened.  This combination of the notebook, STEMlab and Python features makes the STEMlab an excellent tool for prototyping and quick programing. Since Jupyter Notebook enables text, equation and picture editing this is a perfect tool for tutorials, examples and ect. 


.. image:: img/Activity_19_Figure_7.png

Figure 5: Creating new Jupyter notebook


If you have successfully created new Jupyter notebook then copy-paste code bellow and run it.
Code bellow will generate same signal as from figure 4 but it will plot them in XY graph. 
For measuring :math:`VI` curve an "XY" plot is required where x-axis will represent diode voltage 
:math:`IN_2` and y-axis a diode current :math:`(IN_1 - IN_2) / R_3`.


.. note:: Copy code from below into cell 1

    .. code-block:: python
      
      # Import libraries 
      from redpitaya.overlay.mercury import mercury as overlay

      from bokeh.io import push_notebook, show, output_notebook
      from bokeh.models import HoverTool, Range1d, LinearAxis, LabelSet, Label
      from bokeh.plotting import figure, output_file, show
      from bokeh.resources import INLINE 
      output_notebook(resources=INLINE)

      import numpy as np
      
      # Initialize fpga modules
      fpga = overlay()
      gen0 = fpga.gen(0)
      osc = [fpga.osc(ch, 1.0) for ch in range(fpga.MNO)]
      
      # Configure OUT1 generator channel 
      gen0.amplitude = 0.45
      gen0.offset    = -0.45
      gen0.waveform  = gen0.sawtooth(0.5)
      gen0.frequency = 2000
      gen0.start()
      gen0.enable = True
      gen0.trigger()
    
      # R1 resistor value
      R3=1000

      # Configure IN1 and IN2 oscilloscope input channels
      for ch in osc:
          ch.filter_bypass = True
          # data rate decimation 
          ch.decimation = 10
          # trigger timing [sample periods]
          N = ch.buffer_size
          ch.trigger_pre  = 0
          ch.trigger_post = N
          # osc0 is controlling both channels
          ch.sync_src = fpga.sync_src["osc0"]
          ch.trig_src = fpga.trig_src["osc0"]
          # trigger level [V], edge ['neg', 'pos'] and holdoff time [sample periods]
          ch.level   = 0.01
          ch.edg     = 'pos'
          ch.holdoff = 0
       
      # Initialize diode current and voltage
      V = I = np.zeros(N)

      # Plotting
      hover = HoverTool(mode = 'vline', tooltips=[("V", "@x"), ("I", "@y")])
      tools = "wheel_zoom,box_zoom,reset,pan" 
      p = figure(plot_height=500, plot_width=900, title="XY plot of NMOS transistor VI characteristic", toolbar_location="right", tools=(tools, hover))
      p.xaxis.axis_label='Voltage [V]'
      p.yaxis.axis_label='Current [mA]'
      r = p.line(V,I, line_width=1, line_alpha=0.7, color ="blue")
      # get and explicit handle to update the next show cell 
      target = show(p,notebook_handle=True)

 
 Create new cell (Insert -> Cell Below) and copy code from below into it.

    .. code-block:: python

      # Measuring I , V  and re-plotting
      while True:
          # reset and start
          osc[0].reset()
          osc[0].start()
          # wait for data
          while (osc[0].status_run()): pass
          V0=osc[0].data(N-100)*10  # IN1 signal
          V1=osc[1].data(N-100)*10  # IN2 signal
          I=((V0-V1)/R3)*1E3        # 1E3 convert to mA
          r.data_source.data['x'] = V0
          r.data_source.data['y'] = I
          push_notebook(handle=target)

 Run Cell 1 and Cell 2. Notice cell 2 is a main loop for the acquisition and re-plotting. If you stop the acquisition just run only cell 2 
 for starting measurements again.   


After running the code above you should get diode VI characteristic as is shown on figure 5.

.. image:: img/Activity_23_Figure_5.png

Figure 6: NMOS VI characteristic measured using Jupyter Notebook

PMOS as a diode
----------------

Same measurements can be also don for PMOS transistor. With PMOS transistor the voltage polarity is reversed so PMOS diode configuration must be different than
NMOS one. PMOS diode configuration is shown on figure 7. 


.. image:: img/Activity_23_Figure_6.png

Figure 7:  PMOS diode connection diagram 


Procedure
----------

1. Build the circuit from figure 7 on the breadboard. Set R1=2.2kΩ, R2=10kΩ and R3=1kΩ. For M1 take ZVP211.

.. warning::
      Before connecting the circuit to the STEMlab -3.3V and +3.3V  pins double check your circuit. The  -3.3V and +3.3V  voltage supply pins do not have short circuit handling and they can be damaged in case of short circuit.

2. Start the Oscilloscope & Signal generator application
3. In the OUT1 settings menu set Amplitude value to 0.45V, DC offset to -0.45 V, Frequency to 1kHz to apply the input voltage. 
   From the waveform menu select TRIANGLE, deselect SHOW and select enable.
4. On the left bottom of the screen be sure that  IN1, IN2 and MATH V/div are set to 1V/div (You can set V/div by selecting the desired 
   channel and using vertical +/- controls)
5. Set t/div value to 200us/div (You can set t/div using horizontal +/- controls)
6. Under MATH channel settings set :math:`IN1-IN2` and select ENABLE.
7. Under IN1 and IN2 menu settings set probe to x10 and vertical offset to 0.
8. Under MATH menu settings set vertical offset to 0.
9. Under TRIGER settings, set trigger level to 1V


.. image:: img/Activity_23_Figure_7.png

Figure 8: PMOS diode connection measurements

As we can see from figure 8 the PMOS in diode configuration behaves as an diode with forward drop voltage equal to the PMOS :math:`V_{TH}`.
Compare Figure 8 and Figure 4 and try to explain the difference between NMOS and PMOS diode configurations. 
