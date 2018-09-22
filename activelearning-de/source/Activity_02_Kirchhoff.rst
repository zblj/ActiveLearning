Kirchhoffs Spannungs- und Stromgesetze
======================================

Zielsetzung
-----------

Ziel dieses Labors ist es, Kirchhoffs Spannungsgesetz (Maschenregel)
und Kirchhoffs Stromgesetz (Knotenregel) mittels Maschen- und
Knotenanalyse der gegebenen Schaltung zu überprüfen.


.. _Hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _hier: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2

In diesen Tutorials verwenden wir die Terminologie aus dem
Benutzerhandbuch, wenn es um die Verbindungen zur Red Pitaya
STEMlab-Board Hardware_ geht. Die als 5V-Spannungsquelle verwendeten
Verlängerungsstecker-Pins sind in der Dokumentation hier_ dargestellt.


Hintergrund
-----------

1. Kirchhoffs Spannungsgesetz besagt, dass die algebraische Summe
   aller Spannungen in jeden geschlossenen Kreis (Schleife oder
   Masche) Null ist. Wenn wir die Spannungen an jedem Widerstand R1
   bis R5 als V1 bis V5 definieren (Abbildung 1), ergibt sich nach
   Anwendung des Kirchhoff-Spannungsgesetzes für die Maschen 1 und 2:
     

   - Masche 1
     
     .. math:: -V_s + V_1 + V_2 + V_5 = 0
	:label: eq_1

   - Masche 2
     
     .. math:: -V_2 + V_3 + V_4 = 0
	:label: eq_2

		
   .. _fig_01:
   .. figure:: img/Activity_02_Fig_01.png

      Kirchhoff's Knotenpotentialverfahren 

2. Kirchhoffs-Stromgesetz besagt, dass die algebraische Summe aller
   Ströme an einem Knoten Null ist. Wenn wir die Ströme durch jeden
   Widerstand R1 bis R5 als I1 bis I5 definieren, ergibt die Anwendung
   des Kirchhoffschen Stromgesetzes auf die ersten vier Knoten in der
   in Abbildung 1 dargestellten Schaltung die folgenden Gleichungen;
   

   - Knoten a
     
     .. math:: -I_s + I_1 = 0
	:label: eq_3
		
   - Knoten b
     
     .. math:: - I_1 + I_2 + I_3 = 0
	:label: eq_4
	
   - Knoten c
     
     .. math:: -I_3 + I_4 = 0
	:label: eq_5
	
   - Knoten d
     
     .. math:: -I_2 - I_4 + I_5 = 0
	:label: eq_6


Materialien
-----------

Red Pitaya STEMlab 125-14 oder STEMlab 125-10 

Verschiedene Widerstände:

- 1 KΩ (2),
- 1,5 KΩ (2),
- 2.2 KΩ


Vorgehensweise
--------------

1. Konstruieren Sie die in Abbildung 1 dargestellte Schaltung mit diesen Widerstandswerten:

   - R1 = 1 KΩ
   - R2 = 2,2 KΩ
   - R3 = 1,5 KΩ
   - R4 = 1 KΩ
   - R5 = 1,5 KΩ

     
.. _color_coding_tool: http://www.hobby-hour.com/electronics/resistorcalculator.php
.. _E2: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extent.html#extension-connector-e2

2. Verwenden Sie das color_coding_tool_, um die richtigen Widerstände
   aus Ihrem Kit auszuwählen. Verwenden Sie Multimeter mit
   Widerstandsmessung, um die aktuellen Widerstandswerte zu
   überprüfen.
   

3. Verwenden Sie anstelle der in Abbildung 1 dargestellten
   Spannungsquelle "V\ :sub:`s`\" die STEMlab-Spannungsstifte am
   Erweiterungsstecker E2_. Verbinden Sie den 5V-Pin mit dem Knoten
   **a** und den Knoten **e** mit dem **GND** -Pin.

   .. _fig_02:
   .. figure:: img/Activity_02_Fig_02.png
	       
      Leistungsanschlüsse

   Die Schaltung auf der Steckplatine ist in der folgenden
   Abbildung dargestellt.
      
   .. _fig_03:
   .. figure:: img/Activity_02_Fig_03.png
	
      Widerstandsschaltung aus der Nähe

4. Messen Sie alle Spannungen genau und berechnen Sie Ströme in der
   Schaltung mit der Oszilloskopanwendung.
   
   Das Messen des Spannungsabfalls am gewünschten Widerstand erfolgt,
   in dem man die Oszilloskopsonde von IN1 mit der einen Seite des
   Widerstands und die Oszilloskopsonde von IN2 mit der anderen Seite
   des Widerstands verbunden ist. Die Spannungsdifferenz VIN1-VIN2
   liefert eine Spannung am gemessenen Widerstand.
   
	
   - Stellen Sie die Dämpfung der Sonden auf x10 ein.
     
   - Schließen Sie die Sonden an den gewünschten Widerstand an. 

   .. _fig_04:
   .. figure:: img/Activity_02_Fig_04.png

      Messkreis

      
   - Oszilloskop-Anwendung starten 
	
     .. _fig_05:
     .. figure:: img/Activity_02_Fig_05.png

	Oszilloskopanwendung

      
   - Im Einstellungsmenü IN1 und IN2 die Option Sondendämpfung x10 auswählen.
	
   - Im Messmenü "MEAN" auswählen, IN1 auswählen und DONE drücken.

   - Im Messmenü "MEAN" auswählen, IN2 auswählen und DONE drücken.

     Nach dem Anklicken von "Fertig" werden die Messungen des
     Mittelwertes von IN1 und IN2 angezeigt. Verwenden Sie diese
     Messung, um die Spannung an R1 zu berechnen.
	 

     V\ :sub:`R1`\ = MEAN( IN1 ) - MEAN( IN2 )
     
     I\ :sub:`R1`\ = V\ :sub:`R1`\ / R\ :sub:`1`\.

     
     .. note:: Um korrekte Spannungsvorzeichen zu erhalten, arbeiten Sie
	       bei der Messung immer in die gleiche Richtung: Schließen Sie
	       beispielsweise die IN1-Sonde auf der Seite des Widerstandes
	       an, wo der markierte Pfeil beginnt (Abbildung 1).
	  

5. Protokollieren Sie die Messungen in tabellarischer Form mit den
   gemessenen Spannungs- und Stromwerten wie unten gezeigt.
   

 +------------------------------+-------------------+----------------+-------------+-------------+	
 |          Abzweig             |  Strom/Spannung   |   V [Volt ]    |   I [mA]    |   R [KΩ]    |    
 +------------------------------+-------------------+----------------+-------------+-------------+
 | V\ :sub:`1`\, I\ :sub:`1`\   |                   |                |             |             | 	
 +------------------------------+-------------------+----------------+-------------+-------------+
 | V\ :sub:`2`\, I\ :sub:`2`\   |                   |                |             |             |                             
 +------------------------------+-------------------+----------------+-------------+-------------+
 | V\ :sub:`3`\, I\ :sub:`3`\   |                   |                |             |             |
 +------------------------------+-------------------+----------------+-------------+-------------+
 | V\ :sub:`4`\, I\ :sub:`4`\   |                   |                |             |             | 
 +------------------------------+-------------------+----------------+-------------+-------------+
 | V\ :sub:`5`\, I\ :sub:`5`\   |                   |                |             |             |
 +------------------------------+-------------------+----------------+-------------+-------------+
 | V\ :sub:`s`\, I\ :sub:`s`\   |                   |                |             |             |
 +------------------------------+-------------------+----------------+-------------+-------------+
 

 6. Überprüfen Sie Kirchhoffs-Maschensatz für die Maschen im
    Stromkreis anhand der Gleichungen :eq:`eq_1` und :eq:`eq_2`.
    

 7. Überprüfen Sie Kirchhoffs-Knotensatz für die Knoten in der
    Schaltung unter Verwendung der Knotengleichungen a, b, c und d.
    

Fragen
------

1. Berechnen Sie die idealen Spannungen und Ströme für jedes Element
   in der Schaltung und vergleichen Sie sie mit den Messwerten.
   
2. Berechnen Sie den prozentualen Fehler in den beiden Messungen und
   geben Sie eine kurze Erklärung für den Fehler.
   























































































































































































