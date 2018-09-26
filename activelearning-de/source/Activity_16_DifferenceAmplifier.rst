Differenzverstärker
###################

Zielsetzung
___________

Das Addieren und/oder Subtrahieren von Analogsignalen ist möglicherweise die häufigste Funktion eines Operationsverstärkers. Diese Übung untersucht einzelne Operationsverstärker-Schaltungen zum Subtrahieren zweier analoger Signale. Wir haben bereits über die Summierverstärkerschaltung_ gesprochen, eine einzelne Operationsverstärkerschaltung zum Hinzufügen von zwei (oder mehr) analogen Signalen. Das gleiche Verhalten, das wir auch hier erwarten, während Signale in den Operationsverstärker-Eingängen subtrahiert und nicht addiert werden sollten.

Anmerkungen
___________

.. _Hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _hier: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-14/extt.html#extension-connector-e2
.. _Oszilloskop: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Signalgeneratoranwendung: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html
.. _Bode: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/bode/bode.html
.. _Summierverstärkerschaltung: http://red-pitaya-active-learning.readthedocs.io/en/latest/Activity13_BasicOPAmpConfigurations.html#summing-amplifier-circuit
.. _OP484: http://www.analog.com/media/en/technical-documentation/data-sheets/OP184_284_484.pdf

In diesen Tutorials verwenden wir die Terminologie aus dem Benutzerhandbuch, wenn es um die Verbindungen zur Red Pitaya STEMlab Board Hardware_ geht. Die Erweiterungsstecker-Pins für die Spannungsversorgung -3,3V und +3,3V sind in der Dokumentation hier_ dargestellt. Die Oszilloskop_ - und Signalgeneratoranwendung_ wird zum Erzeugen und Beobachten von Signalen auf der Schaltung verwendet.

Kurzer Hintergrund
__________________

Die grundlegende Unterschiede der Operationsverstärkerschaltung ist in :numref:`16_fig_01` dargestellt. Zur Lösung der Übertragungsfunktion :math:`V_{out} = f(V_1,V_2)` des Differenzverstärkers können wir ein Überlagerungsprinzip verwenden.

.. _16_fig_01:
.. figure:: img/ Activity_16_Fig_01.png

	    : Basis Differenzverstärker

Im ersten Schritt betrachten Sie die Schaltung aus :numref:`16_fig_01`, bei der der nichtinvertierende Eingang (Pin 3) auf GND gesetzt ist. Wir bekommen eine vertraute invertierende Verstärkerschaltung, deren Übertragungsfunktion wie folgt gegeben ist

.. math::
   V_{out} = -V_1 \bigg( \frac{R_f}{R_i} \bigg) \quad  (1)

Im zweiten Schritt betrachten Sie die Schaltung aus :numref:`16_fig_01`, bei der der :math:`V_1` Eingang auf GND gesetzt wird. Wir lernen die nicht-invertierende Verstärkerschaltung kennen, deren Übertragungsfunktion wie folg gegeben ist

.. math::
   V_{out} = V_2 \bigg(1 + \frac{R_f}{R_i} \bigg) \quad (2)
  
Nach dem Superpositionsprinzip erhalten wir

.. math::
   V_{out} = V_{out_{Schritt_1}} + V_{out_{Schritt_2}} = V_2 \bigg (1+ \frac{R_f}{R_i} \bigg) - V_1 \bigg( \frac{R_f}{R_i } \bigg) \quad (3)

Aus der obigen Gleichung können wir deutlich erkennen, dass die Schaltung :numref:`16_fig_01` tatsächlich ein Differenzverstärker ist, wobei das Ausgangssignal :math:`V_ {out}` die Differenz der um Faktor :math:`\frac{R_f}{R_1}` verstärkten  Eingangssignale :math:`V_2 - V_1` ist.

Für :math:`R_f = R_i` erhalten wir:

.. math::
   V_{out} = 2V_2 - V_1 \quad (4)
  

Materialien
___________

- Red Pitaya STEMlab
- OPAMP: 1x OP484
- Widerstand: 4x 10 :math:`k\Omega`

Verfahren
_________

Bauen Sie den in Abbildung 2 gezeigten Differenzverstärker auf. R3 und R4 werden als Spannungsteiler hinzugefügt, um das Eingangssignal :math:`V_2^*` um die Hälfte zu dämpfen. Mit dem hinzugefügten Spannungsteiler (R3, R4) erhalten wir für die in :numref:`16_fig_02` und aus Gleichung (4) dargestellte Schaltung folgende Werte

.. math::
   V_{out} = 2V_2 - V_1 = \frac{1}{2} 2 V_2^* - V_1 = V_2^* - V_1 = OUT_2 - OUT_1 \quad (5)

.. _16_fig_02:
.. figure:: img/ Activity_16_Fig_02.png

	    : Differenzverstärker

.. Warnung::
   Bevor Sie die Schaltung an die STEMlab-Pins -3,3V und +3,3V anschließen, überprüfen Sie Ihre
   Schaltung nochmals. Die Spannungsversorgungsstifte -3,3V und +3,3V haben keine Schutzschaltung
   und können im Falle eines Kurzschlusses beschädigt werden.
   
.. _16_fig_03:
.. figure:: img/ Activity_16_Fig_03.png

	    : Differenzverstärker auf dem Steckbrett

1. Starten Sie die Oszilloskop & Signalgenerator - Anwendung.
2. Deaktivieren Sie im Einstellungsmenü der IN1 die Schaltfläche SHOW.
3. Im Menü OUT1 Einstellungen den Amplitudenwert auf 0,2V einstellen, um eine 0,4Vp-p Sinuswelle mit Zentrierung auf 0V als Eingangsspannung :math:`V_1` anzulegen. Wählen Sie aus dem Wellenform-Menü SINE und wählen Sie Enable.
4. Im Menü OUT2 Einstellungen den Amplitudenwert auf 0,6V einstellen, um eine 1,2Vp-p Sinuswelle mit Zentrierung auf 0V als Eingangsspannung :math:`V_2^*` anzulegen. Wählen Sie aus dem Wellenform-Menü SINE und wählen Sie Enable.
5. Für die stabile Aufnahme die Triggerquelle auf IN2 einstellen.
6. Stellen Sie sicher, dass OUT1 V/div und OUT2 V/div auf der linken unteren Seite des Bildschirms auf 200 mV/div eingestellt sind (Sie können V/div einstellen, indem Sie den gewünschten Kanal und die vertikalen +/- Regler auswählen)
7. Wählen Sie im Messmenü "MAX", wählen Sie IN2 und drücken Sie FERTIG

.. _16_fig_04:   
.. figure:: img/ Activity_16_Fig_04.png

	    : Differenzverstärkermessungen

.. note::
   Wie man an den Messungen in :numref:`16_fig_04` sehen kann, verhält sich unsere Schaltung wie ein Spannungsdifferenzverstärker, da die IN2-Amplitude gleich der Differenz zwischen OUT2- und OUT1-Amplituden ist, wie sie durch Gleichung (5) vorhergesagt wird.

Da beide Eingangssignale sinusförmig sind, ist das einzige Merkmal der Differenzverstärkerschaltung auf dem Ausgangssignal die Differenz in der Amplitude. Aber was passiert, wenn wir unterschiedliche Wellenformen von OUT1 und OUT2 haben?

1. Wählen Sie im OUT2-Einstellungsmenü die SQUARE-Wellenform und beobachten Sie die Ergebnisse

.. _16_fig_05:
.. figure:: img/ Activity_16_Fig_05.png

	    : Differenzverstärkermessungen - Verschiedene Wellenformen von OUT1 und OUT2

Aus :numref:`16_fig_05` können wir ein Differenzverstärkerausgangssignal (IN2) beobachten, das eine seltsame Wellenform aufweist, die als IN2(Wellenform) = OUT2(SQUARE) - OUT1(SINE) angegeben ist. Diese Beobachtung bestätigt absolut, dass es sich bei der in :numref:`16_fig_02` dargestellten Schaltung um einen Differenzverstärker handelt.

.. note::
   Probieren Sie verschiedene Wellenformen von OUT1 und OUT2 aus und beobachten Sie die Ergebnisse.
      





















































































































