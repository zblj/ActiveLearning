Was ist Phase?
==============

Zielsetzung
-----------

Das Ziel dieser Laboraktivität ist es zu verstehen, was gemeint ist
die Phasenbeziehung zwischen Signalen und um zu sehen, wie gut Theorie
stimmt mit der Praxis überein. Ein sekundäres Ergebnis wird eine
vorläufige sein Verständnis der Red Pitaya STEMlab Hardware und
Software - Test & Messungen Anwendungen.


Anmerkungen
-----------

.. _hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html

In diesen Tutorials verwenden wir die Terminologie aus dem Benutzerhandbuch
wenn man sich auf die Verbindungen zum Red Pitaya STEMlab Board bezieht
hardware_.


Hintergrund
-----------

Wir werden das Konzept der Phase untersuchen, indem wir die Sinuswellen und betrachten
passive Komponenten, mit denen wir die Phasenverschiebung mit real beobachten können
Signale. Zuerst betrachten wir eine Sinuswelle und den Phasenterm in der
Streit. Sie sollten mit der Gleichung vertraut sein:

.. math::
   f(t) = \sin(\omega t + \theta)

:math:`\omega` setzt die Frequenz der Sinuswelle als :math:`t`
fortschreitet und :math:`\theta` definiert einen zeitlichen
Versatz, der definiert eine Phasenverschiebung in der Funktion.

Die Sinusfunktion ergibt Werte von 1 bis -1. Erstes Set
Zeitvariable :math:`t` gleich einer Konstante, sagen wir 1. Das Argument, :math:`\omega t`, ist jetzt nicht länger eine Funktion der Zeit. Mit :math:`\omega` im Bogenmaß, :math:`\sin(\frac{\pi}{4}) \approx 0,7071`.


:math:`2\pi` radians ist gleich :math:`360^{\circ}`, so
:math:`\frac{\pi}{4}` im Bogenmaß entspricht
:math:`45^{\circ}`; :math:`\sin(45^{\circ}) = 0.7071` auch.


Lassen Sie nun :math:`t` mit der Zeit variieren, wie es normalerweise der Fall ist. Wenn der Wert von :math:`\omega t` ändert sich linear mit der Zeit ergibt es eine Sinuswelle wie in Abb. 1. Wie :math:`\omega t` geht von 0 bis :math:`2 \pi` die Sinuswelle geht von 0 bis 1, runter bis -1 und zurück bis 0. Das ist ein Zyklus oder eine Periode, :math:`T`, einer Sinuswelle. Die X-Achse ist die Zeit variierendes Argument / Winkel, :math:`\omega t`, das von 0 bis variiert :math:`2\pi`.

Der Wert von :math:`\theta` ist 0 in der Funktion, die in gezeichnet wird Abb. 1. Seit dem :math:`sin(0) = 0` beginnt die Handlung bei 0. Die ist a einfache Sinuswelle ohne zeitlichen Versatz, also keine Phase Offset. Beachten Sie, dass bei Verwendung von Graden :math:`\omega t` in einem Bereich von 0 bis :math:`2 \pi` oder 0 bis :math:`360^{\circ}` um den Sinus zu erhalten Welle in Fig. 1 gezeigt.

.. figure:: img / Activity_01_Fig_01.png
   :align: center

   Abbildung 1: 2 Zyklen von :math:`\sin(t)`


Als Randnotiz: Was passiert, wenn :math:`\omega t > 2\pi`?

Geben Sie :math:`2.5\pi` in einen Taschenrechner und sehen Sie selbst. Wie du sollte wissen, die Sinusfunktion wiederholt sich alle :math:`2\pi` Radiant oder :math:`360^{\circ}`. Es ähnelt dem Subtrahieren :math:`2\pi(I)` radians aus dem Argument, wo ich die größte Ganzzahl ist, die ein ergibt nicht negatives Ergebnis.

Was passiert, wenn wir eine zweite Sinuswelle mit derselben in Fig. 1 einzeichnen :math:`\omega` value und :math:`\theta = 0`?

Wir haben eine andere Sinuswelle, die auf dem ersten Sinus landet Welle. Da :math:`\theta = 0` gibt es keine Phasendifferenz zwischen die Sinuswellen und sie sehen in der Zeit gleich aus.

Jetzt ändere :math:`\theta` zu :math:`\pi / 2` rad oder :math:`90^{\circ}` für die zweite Sinuswelle. Wir sehen die ursprüngliche Sinuswelle und einen zweiten Sinus Welle nach links verschoben. Fig. 2 zeigt die ursprüngliche Sinuswelle (grün) und die zweite Sinuswelle (orange) mit einem Offset in Zeit. Da der Offset konstant ist, sehen wir die ursprüngliche Sinuswelle zeitlich um einen Wert von :math:`\ theta` verschoben, was :math:`1/4` von der Zeitraum in diesem Beispiel.

.. figure:: img / Activity_01_Fig_02.png
   :align: center

   Abbildung 2: grün - :math:`\sin(t)`, orange - :math:`\sin(t + \pi/4)`.

   
:math:`\theta` ist Zeitverschiebung oder Phasenanteil von Gl. (1). Der Phasenwinkel definiert den zeitlichen Versatz und umgekehrt. Gl. (2) zeigt die Beziehung. Wir haben zufällig ein besonders häufig gewählt Offset von :math:`90^{\circ}`. Der Phasenversatz zwischen einer Sinuswelle und Kosinuswelle ist :math:`90^{\circ}`. Der Versatzwinkel ist fast immer nicht 90. In der Tat ist es oft eine Funktion der Häufigkeit (:math:`f`).

Wenn zwei Sinuswellen vorhanden sind, z.B. Auf einem Scope wird die Phase angezeigt Der Winkel kann durch Messen der Zeit zwischen den beiden Wellenformen berechnet werden (negative bis positive Nulldurchgänge oder "steigende Kanten") können verwendet werden als Zeitmessung Referenzpunkte in der Wellenform). Eine volle Periode der Sinuswelle in der Zeit ist das gleiche wie :math:`360^{\circ}`. Nehmen die Verhältnis der Zeit zwischen den beiden Wellenformen als :math:`Delta t`, und
die Zeit in einer Periode einer vollen Sinuswelle als :math:`T`, du kannst Bestimmen Sie den Winkel zwischen ihnen. Gl. (2) gibt die genaue Beziehung an.

Phase
-----

.. math::

   \theta = \frac{\Delta t}{T} 360^{\circ} = \frac{\Delta t}{T} 2\pi
   \, rad = \Delta t f 2 \pi \, rad;

Wobei :math:`T` ist die Periode der Sinuswelle.



**Natürlich auftretende Zeitverschiebungen in Sinuswellen.**

Einige passive Komponenten ergeben einen Zeitversatz zwischen der Spannung über sie und die Strömung durch sie. Im Unterricht haben wir die Spannung gezeigt über und der Strom durch einen Widerstand war eine einfache Zeit unabhängige Beziehung. :math:`V / I = R`, wobei :math:`R` real ist
und in Ohm. Also die Spannung über und Strom durch einen Widerstand sind
immer in Phase.

Für Kondensatoren und Induktivitäten ist die Gleichung in Bezug auf Spannung :math:`V` zu aktuell :math:`I` ist ähnlich. :math:`V / I = Z`, wobei :math:`Z` ein ist komplexe Impedanz mit realen und imaginären Teilen. Wir schauen nur bei einem Kondensator in diesem Labor.

Im Allgemeinen bestehen die Kondensatoren aus zwei leitenden Platten, die durch ein Paar voneinander getrennt sind dielektrisches Material. Wenn eine potentielle Differenz über die Platten, daher wird ein elektrisches Feld zwischen den Platten erzeugt. Kondensator Dielektrika können aus vielen Materialien bestehen, einschließlich dünner isolierender Materialien Filme und Keramik. Das Unterscheidungsmerkmal eines Kondensators ist sein Kapazität (C), gemessen in Farad (F), die das Verhältnis misst zwischen Spannung und Ladungsaufbau.

Die Grundregel für Kondensatoren ist die Spannung am Kondensator ändert sich nicht, es sei denn, es fließt Strom in die Kondensator. Die Änderungsrate der Spannung (:math:`dv_C/dt`) hängt davon ab über die Größe des Stromes. Für einen idealen Kondensator den Strom :math:`i_C(t)` ist mit der Spannung durch die folgende Formel verbunden:
      
.. math::
   i_C(t) = C \frac{dv_C(t)}{dt}

   
Im Moment sind die Auswirkungen davon nicht zu verstehen Labor. Sie werden dieses Verhalten in späteren Labors beobachten. Die Impedanz von a Kondensator ist eine Funktion der Frequenz. Die Impedanz sinkt mit umgekehrt ist die Frequenz um so niedriger, je höher die Frequenz ist Impedanz.

.. math::
   Z_C = \frac{1}{j \omega C},

Dabei gilt :math:`\omega = 2 \pi f` ist definiert als Winkelgeschwindigkeit.


Eine subtile Sache über Gl. (4) ist der imaginäre Operator :math:`j`. Wenn wir auf einen Widerstand schauen, d. H. Es befindet sich kein imaginärer Operator darin die Gleichung für die Impedanz. Der sinusförmige Strom durch a Widerstand und die Spannung über einen Widerstand haben keinen Zeitversatz zwischen sie, als die Beziehung ist wirklich real. Der einzige Unterschied ist in der Amplitude. Die Spannung ist sinusförmig und ist in Phase mit der aktuelle Sinuskurve. Dies ist bei einem Kondensator nicht der Fall. Wenn wir schauen bei der Wellenform einer sinusförmigen Spannung über einen Kondensator wird es sein Zeit verschoben im Vergleich zu dem Strom durch den Kondensator. Das imaginärer Operator :math:`j` ist dafür verantwortlich. Betrachten wir Fig. 3, wir kann beobachten, dass die aktuelle Wellenform eine Spitze (Maximum) hat, wenn die Steigung der Spannungswellenform ( :math:`dv/dt`) ist maximal.

Die Zeitdifferenz kann als ein Phasenwinkel zwischen den beiden ausgedrückt werden Wellenformen wie in Gl. (2).


.. figure:: img/Activity_01_Fig_03.png
   :align: center

   Abbildung 3: Phasenwinkelbestimmung zwischen Spannung (V) und Strom (I).

   
Sie haben wahrscheinlich Schaltungen gesehen, die vollständig aus Widerständen bestehen. Diese Schaltungen haben nur echte Impedanz, was bedeutet, dass Spannungen während der gesamten Schaltung sind alle in Phase (d.h. :math:`\ theta = 0` Grad.), da es die komplexe Impedanz ist, die den Strom in der Zeit verschiebt in Bezug auf die Spannung. Beachten Sie, dass die Impedanz eines Kondensators ist rein imaginär. Widerstände haben echte Impedanzen, also Schaltungen, die enthalten beide, Widerstände und Kondensatoren, werden komplexe Impedanzen haben.

Um den theoretischen Phasenwinkel zwischen Spannung (V) und Strom (I) in einer RC-Schaltung:

.. math::

   i(t) = \frac{v(t)}{Z_{tot}},


wo :math:`Z_ {tot}` ist die Gesamtkreisimpedanz.

Ordne die Gleichung neu an, bis sie aussieht :math:`Z_ {tot} = a + jb`,
wo :math:`a` und :math:`b` sind reelle Zahlen. Die Phasenbeziehung
der Strom in Bezug auf die Spannung ist dann:

.. math::

   \theta = \arctan\left(\frac{b}{a}\right).


**Materialien**

- Red Pitaya STEMlab 125-14 oder STEMlab 125-10

- :math:`2 \times 470\Omega` Widerstände

- :math:`1 \times 1\mu F` Kondensator


**Oszilloskop & Signalgenerator**

.. _quickstart: http://redpitaya.readthedocs.io/en/latest/doc/quickStart/first.html
.. _here: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/oscSigGen/osc.html

Sie werden das STEMlab-Board von Red Pitaya und das Oszilloskop verwenden & Signalgenerator-Anwendung. Bedienungsanleitung für den Start der Red Pitaya STEMlab Board kann bei quickstart_ gefunden werden, während Oscilloscope & Signal Generator-Anwendung wird hier_ erläutert.



Lehrziele
---------

1. Erforschen Sie die Phasenbeziehung von Spannungen in einer Widerstandsschaltung.

2. Erforschen Sie die Phasenbeziehung von Spannungen in einem RC-Kreis.


Verfahren
---------

- Stellen Sie sicher, dass das STEMlab an ein lokales Netzwerk angeschlossen ist und starten Sie das Web-Schnittstelle mit Webbrowser.

- Starten Sie die Anwendung Oszilloskop und Signalgenerator. Die Hauptsache Der Bildschirm sollte wie ein Oszilloskop mit einstellbarer Reichweite aussehen. Positions- und Messparameter.

- Vergewissern Sie sich auf der linken unteren Seite des Bildschirms, dass OUT1 V/div und OUT2 V/div sind beide auf 200 mV/div gesetzt (Sie können V/div einstellen, indem Sie die Taste gewünschter Kanal und vertikale +/- Regler).

- Stellen Sie im OUT1-Steuermenü die Frequenz von OUT1 mit auf 1000 Hz ein :math:`0^{\circ}` Phase und 0,9 V Amplitude. Wählen Sie Sinus-Wellenform Form und Ausgabe aktivieren.

- Stellen Sie im OUT2-Steuermenü die Frequenz von OUT2 auf 1000 Hz und ein 0,9 V Amplitude. Wählen Sie SINE Wellenform und aktivieren Sie die Ausgabe.

- Setzen Sie t / div auf 200 us / div (mit horizontalen +/- Kontrollen).











































































































































































































































































































