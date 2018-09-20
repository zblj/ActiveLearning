Spannungsteilung
================


Zielsetzung
-----------
Das Ziel dieser Labortätigkeit ist die Überprüfung der Spannungsteilungseigenschaften von Widerstandsnetzwerken.


Notizen
-------
In diesen Tutorials verwenden wir die Terminologie aus dem Benutzerhandbuch, wenn es um die Verbindungen zur Red Pitaya STEMlab Board Hardware geht. Verlängerungsstecker-Pins, die als 5V-Spannungsquelle verwendet werden, sind in der Dokumentation hier dargestellt. 


Hintergrund
-----------
Die Spannungsteilung ermöglicht es uns, die Analyse eines Schaltkreises zu vereinfachen. Die Spannungsteilung ermöglicht es uns, zu berechnen, welcher Anteil der Gesamtspannung an einer Reihe von Widerständen über einen einzelnen Widerstand abgefallen ist. Für die Schaltung von Figur 1 lauten die Formeln der Spannungsteilung:

.. math::

	V_1 = V_S \frac{R_1}{R_1 + R_2}

	V_2 = V_S \frac{R_2}{R_1 + R_2}

	
.. figure:: img/Activity_03_Fig_01.png
   
   Abbildung 1: Spannungsteilung.

   
Materialien
-----------
- Red Pitaya STEMlab 125-14 oder STEMlab 125-10 

- Verschiedene Widerstände:
  
  - :math:`470 \Omega`, 
    
  - :math:`1 k\Omega`, 

  - :math:`4,7 k\Omega`,

  - :math:`1,5 k\Omega`.


Vorgehensweise
--------------

a) Bauen Sie die Schaltung  wie in Abb. 1 dargestellt auf. Setzen Sie :math:`R_1 = 4.7 k\Omega`, :math:`R_2 = 1,5 k\Omega` und verwenden Sie das feste Netzteil 5 V-Pin vom Erweiterungsstecker als Spannungsquelle V\ :sub:`s`\. Verwenden Sie die Oszilloskopanwendung, um die Spannungen V\ :sub:`1`\ und V\ :sub:`2`\ zu messen. Wiederholen Sie diesen Schritt für R\ :sub:`1`\ = R\ :sub:`2`\ = :math:`4.7 k\Omega` und notiere die Messergebnisse. 

b) Berechnen Sie die Spannungen V\ :sub:`1`\ und V\ :sub:`2`\unter Verwendung der Gl. (1) und (2).

c) Vergleichen Sie die Ergebnisse der Schritte a und b.






































