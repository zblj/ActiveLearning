Transient Response
============================

Objective
---------------
The objective of this activity is to inform reader about transient response on a simple circuit that consists of resistors and either capacitors or inductors.

Background
--------------
You might have already heard that in DC conditions, capacitors act as an open circuit inductors act as a short circuit. If you ignore inductors series resistance and capacitor’s parallel resistance, both of which more often than not can be neglected, no one will argue with you. Things get trickier when voltages aren’t constant, for example when voltage source is suddenly connected or disconnected.
Let's expand on the previously mentioned notion that in DC conditions capacitors acs as an open circuit and inductors act as a short. Capacitors resist voltage change and inductors resist current change. Just another line of gibberish or something actually useful? I hope you will find it to be the latter.

Capacitors
-----------
Resisting voltage change doesn’t mean, that capacitor’s voltage won’t change at all, it only means that it won’t ever happen suddenly. Upon voltage application, capacitors will charge slowly and when you try to discharge one, voltage will drop slowly. Contrary to that, current will change rapidly. That is described by the following two equations:

  .. math:: u_C = \frac{1}{C} \int i_c \cdot dt
  .. math:: i_C = C \cdot \frac{du_C}{dt}
  
.. image:: img/2_circuits_RC.png
   :name: RC circuit
   :align: center
   
But you didn’t come here to do integrals, you want cookiecutter recipes. How does a capacitor behave when faced with a step change? Let’s observe a case where we have an R-C circuit who’s input jumps from 0 V to :math:`U_0`.

  .. math:: u_C = U_0 (1-e^{-t/\tau})
  .. math:: i_C = \frac{U_0}{R} e^{-t/\tau}
  .. math:: \tau = R \cdot C

.. image:: img/2_RC_graph.png
   :name: transient response o fan RC circuit
   :align: center

Ok, so we have a set of two equations, one for voltage and one for current, and one fancy T-shaped constant. That one is pronounced as “tau” and is also known as time constant. Let’s take a look at capacitor voltage at different times, where time is a multiple of :math:`\tau`.

+----------------------+---------------------------+---------------------------+
| :math:`t`            | :math:`U_C / U_{C_{MAX}}` | :math:`I_C / I_{C_{MAX}}` |
+======================+===========================+===========================+
| :math:`0 \cdot \tau` | 00.00%                    | 100.00%                   |
+----------------------+---------------------------+---------------------------+
| :math:`1 \cdot \tau` | 63.21%                    | 36.78%                    |
+----------------------+---------------------------+---------------------------+
| :math:`2 \cdot \tau` | 86.46%                    | 13.53%                    |
+----------------------+---------------------------+---------------------------+
| :math:`3 \cdot \tau` | 95.02%                    | 04.98%                    |
+----------------------+---------------------------+---------------------------+
| :math:`4 \cdot \tau` | 98.16%                    | 01.83%                    |
+----------------------+---------------------------+---------------------------+
| :math:`5 \cdot \tau` | 99.32%                    | 00.67%                    |
+----------------------+---------------------------+---------------------------+
| :math:`6 \cdot \tau` | 99.75%                    | 00.24%                    |
+----------------------+---------------------------+---------------------------+