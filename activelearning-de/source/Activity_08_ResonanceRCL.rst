Resonanz in RLC-Schaltungen
=========================

Zielsetzung
---------

Das Ziel dieser Labortätigkeit ist es, das Phänomen des
Resonanz in RLC-Schaltungen. Bestimmen Sie die Resonanzfrequenz und die
Bandbreite des gegebenen Netzwerks unter Verwendung des Amplitudenverlaufs zu einem
sinusförmige Quelle. 

Notizen
-----

.. Hardware: http://redpitaya.readthedocs.io/en/latest/doc/developerGuide/125-10/top.html
.. _Bode: http://redpitaya.readthedocs.io/en/latest/doc/appsFeatures/apps-featured/bode/bode.html

In diesen Tutorials verwenden wir die Terminologie aus dem Benutzerhandbuch.
wenn es um die Anschlüsse an die Red Pitaya STEMlab-Karte geht.
hardware_.

Die Anwendung des Oszilloskops und des Signalgenerators wird zur Erzeugung und zum Betrieb von
Beobachten von Signalen auf dem Schaltkreis. Bode_ Analysator-Anwendung wird verwendet
um den Frequenzgang der RLC-Schaltung zu messen. 


Hintergrund
----------

Ein Resonanzkreis, auch Abstimmkreis genannt, besteht aus einem
Induktor und Kondensator zusammen mit einer Spannungs- oder Stromquelle. Es
ist eine der wichtigsten Schaltungen in der Elektronik. Für
Beispiel, ein Resonanzkreis, in einer von vielen Formen, erlaubt es uns, die Stimmung zu optimieren.
in einen gewünschten Radio- oder Fernsehsender aus der großen Anzahl von
Signale, die uns jederzeit umgeben.

Ein Netz ist in Resonanz, wenn die Spannung und der Strom am Netz
Eingangsklemmen sind phasengleich und die Eingangsimpedanz des Netzwerks ist
rein resistiv.  

... Abbildung:: img/Aktivität_08_Figur_1.png

   Abbildung 1: Parallel-Resonanzkreis

   
Berücksichtigen Sie die parallele RLC-Schaltung von Abb. 1. Die von der Schaltung angebotene stationäre Admittanz ist: 

... Mathe:...:

   Y = \frac{1}{R} + j \left( \omega C - \frac{1}{\omega L} \right) 

Resonanz entsteht, wenn die Spannung und der Strom an den Eingangsklemmen
sind in Phase. Dies entspricht einer rein realen Zulassung, so dass die
die notwendige Bedingung ist gegeben durch:

... Mathe:...:

   \omega C - \frac{1}{\omega L} = 0

   
Die Resonanzbedingung kann durch Einstellen von L, C oder C erreicht werden.
Mathe:`\omega`. Unter Konstanthaltung von L und C wird die Resonanzfrequenz
:math:`\omega_0` wird gegeben durch:   


... Mathe:...:

   \omega_0 = \frac{1}{\sqrt{LC}} \, rad/s (1)

oder 

... Mathe:...:

   f_0 = \frac {1}{2 \pi \sqrt{LC}} \, Hz (2)

Frequenzgang: Es handelt sich um eine Darstellung der Größe der Ausgabe.
Spannung eines Resonanzkreises in Abhängigkeit von der Frequenz. Die Antwort
beginnt natürlich bei Null und erreicht einen Maximalwert in der Nähe von
die Eigenresonanzfrequenz und fällt dann wieder auf Null, wenn ω
wird unendlich. Der Frequenzgang ist in Abbildung 2 dargestellt.  

... Abbildung:: img/Aktivität_08_Figur_2.png

   Abbildung 2: Frequenzgang des Parallelschwingkreises

   
Die beiden zusätzlichen Frequenzen ω :sub: `1` und ω :sub:`2` sind auch dabei.
angegeben, die als Halbleistungsfrequenzen bezeichnet werden. Diese Frequenzen
Lokalisieren Sie die Punkte auf der Kurve, an denen sich der Spannungsverlauf befindet.
1/sqrt(2) oder das 0,707-fache des Maximalwertes. Sie werden verwendet, um zu messen
die Bandbreite der Ansprechkurve. Dies wird als Halbwertszeit bezeichnet.
Bandbreite des Schwingkreises und ist definiert als:  

... Mathe:...:

   \beta = \omega_2 - \omega_1 (3)

   
... Abbildung:: img/Aktivität_08_Figur_3.png

   Bild 3: Serien-Resonanzkreis

   
Materialien
---------


Rote Pitaya STEMlab 125-14 oder STEMlab 125-10 
Widerstände 100 Ω, 1 KΩ
Kondensatoren 0,01 µF
Induktivitäten 4,7 mH


Vorgehensweise
---------

Zusätzliche Kalkulation: 
Mit einem der sw-Tools wie Matlab oder Python können wir berechnen.
die Impedanz der parallelen RLC-Schaltung aus Figur 1.

Die Admittanz (Y) der Parallelschaltung ist in Gleichung 1 oben angegeben.
wobei die Impedanz Z als Z = 1 / Y angegeben ist.
       
       
... Anmerkung:: 
	
   Bei dieser Berechnung berücksichtigen wir den Serienwiderstand des
   Induktor. Dieser Widerstand beeinflusst das Phasengangverhalten des RLC.
   Schaltung bei niedrigeren Frequenzen. Die obigen Gleichungen werden für die ideale
   Komponenten ohne parasitäre Elemente. In der Praxis (Messungen)
   wir haben nur reale Elemente und wir müssen berücksichtigen, dass
   Induktor ist keine reine Induktivität, sondern hat auch eine effektive Serie.
   Widerstand :math:`R_{esr}`, also

   ... Mathe:...:

      Y_{L} = \frac{1}{(R_{esr} + j 2 \pi f L)}.


      
.. Impedanz: https://en.wikipedia.org/wiki/Electrical_Impedanz
.. Antiresonatoren: https://en.wikipedia.org/wiki/Antiresonance


... Anmerkung::

   Die Resonanzfrequenz ist definiert als die Frequenz, bei der der
   Impedanz_ der Schaltung ist auf ein Minimum reduziert. Gleichwertig kann es sein
   definiert als die Frequenz, bei der die Impedanz rein real ist.
   (d.h. rein resistiv). Dies geschieht, weil die Impedanzen von
   der Induktor und der Kondensator bei Resonanz sind gleich, aber entgegengesetzt.
   unterschreiben und stornieren. Stromkreise, bei denen L und C parallel geschaltet sind.
   als Serien haben tatsächlich eine maximale Impedanz und nicht eine minimale.
   Impedanz. Aus diesem Grund werden sie oft beschrieben als
   Antiresonatoren_, es ist jedoch immer noch üblich, die Frequenz zu benennen.
   bei dem dies als Resonanzfrequenz geschieht.

Matlab-Code zur Berechnung von :math:`Z` ist unten aufgeführt.

... Codeblock::: Matlab

   alle schließen
   alles löschen
   clc
   Rs = 100;
   R1 = 1E3;
   L1 = 4.7E-3;
   C1 = 0,1E-6;
   Resr = 6,5; % Induktor-Serienwiderstand in Ohm
   Vin = 1;
   f = 100:100:1E6; % Frequenzbereich für die Berechnung

   %%% Berechnung von Z
   Y1 = 1/R1;
   Y2 = i*2*pi.*f*C1;
   Y3 = 1./(Rind+i*2*pi.*f*L1);
   Y = Y1 + Y2 + Y3;
   Z = 1./Y;

   %% Plotting
   ax = plotyy(f,real(Z),f,imag(Z),'semilogx','semilogx','semilogx');
   ylabel(ax(1), 'Realteil von Z / Ohm');
   ylabel(ax(2), 'Realteil von Z / Ohm');
   xlabel('Frequenz / Hz');
   Gitter ein

   
Wenn wir den obigen Code ausführen, erhalten wir folgende Ergebnisse, die auf dem Bild unten gezeigt werden.

... Abbildung:: img/Aktivität_08_Figur_4.png
 
   Abbildung 4: Berechnung der Impedanz Z der parallelen RLC-Schaltung.
   Blaue Kurve real/resistiv Teil von Z, grüne Kurve imaginär/reaktiv
   Teil von Z. 

   
Wir können auch den absoluten Wert von Z berechnen, der der kombinierte Wert ist.
Impedanz der RLC-Schaltung aus Figur 1.  Absolutwert der Impedanz Z
ist die Parameterform, die wir vorhersagen können, was die Messungen sind.
sollte so aussehen.


Wir können die Schaltung aus Figur 8 modellieren, wie in der folgenden Abbildung dargestellt.
wobei Z = 1/Y und Y in Gleichung 1 angegeben ist. 

... Abbildung:: img/Aktivität_08_Figur_5.png

   Abbildung 5: Darstellung der parallelen RLC-Schaltung als komplexe Impedanz Z

Aus Abbildung 5 oben können wir deutlich erkennen, dass unsere Schaltung einfach ist.
Spannungsteiler mit Vout=Vin*Z/(Rs+Z). Aber da das Z die Frequenz ist.
abhängig ist, wird das Verhältnis zwischen Z und Rs frequenzabhängig sein und
damit das Vin/Vout-Verhältnis.

Bei einer bestimmten Frequenz f: wobei der Wert von Z viel kleiner als der Wert ist.
von Rs wird die Amplitude der Ausgangsspannung viel kleiner sein als die des Eingangs.
Spannungsamplitude.

Bei einer bestimmten Frequenz f: wobei der Wert von Z viel höher ist als der Wert von Rs.
Die Amplitude der Ausgangsspannung liegt nahe an der Eingangsspannung.
Amplitude

Bei einer bestimmten Frequenz f: wobei Z=Rs das Vout sein wird ½ Vin.  

Bei einer bestimmten Frequenz f: wo Z maximal ist, wird das Vout auch sein.
maximal. Dies ist die Resonanzfrequenz.


... Abbildung:: img/Aktivität_08_Figur_6.png

   Abbildung 6: Berechnung des Absolutwertes der Impedanz Z für die in Abbildung 3 dargestellte Schaltung. 


Verwendung von

... Mathe:...:

   V_{out} = V_{in} \frac{Z}{R_s + Z}

können wir den Frequenzgang unserer RLC-Schaltung berechnen.
Abb. 5 und 8.

... Anmerkung::

   Größenänderung in Dezibel (dB)
   
   ... Mathe:...:

      H_v = 20 \cdot \log_{10}\left\left\lvert \frac{V_{out}}{V_{in}} \right\lvert.



... Abbildung:: img/Aktivität_08_Figur_7.png

   Abbildung 7: Berechnung des Frequenzgangs (Vout/Vin) für die Schaltung in Abbildung 5.


Vorgehensweise:

1. Stellen Sie die RLC-Schaltung wie in Abbildung 8 auf Ihrem lötfreien Gerät dar.
   Breadboard, mit den Komponentenwerten RS = 100 Ω, R1 = 1 KΩ, C1 =
   0,1 µF und L1= 4,7 mH.

... Abbildung:: img/Aktivität_08_Figur_8.png

   Abbildung 8: Parallele RLC-Schaltung für die Messungen.


2. Öffnen Sie die Anwendung Bode analyzer. Im Menü "Einstellungen" Start einstellen
   Frequenz bis 100Hz, Endfrequenz bis 1MHz und Anzahl der Schritte
   auf 50. Und klicken Sie auf die Schaltfläche "RUN". 

... Abbildung:: img/Aktivität_08_Figur_9.png

   Abbildung 9: Bode Analysator Anwendung

   
Nachdem die Messungen durchgeführt wurden, sollten Sie den Frequenzgang Ihrer Schaltung erhalten, wie in Abbildung 10q dargestellt.

... Abbildung:: img/Aktivität_08_Figur_10.png

    Abbildung 10: Frequenzgang der Schaltung aus Abbildung 8 Aufnahme durch Bode Analysator-Anwendung.



- Vergleichen Sie Messungen und Berechnungen. Wenn es einen Unterschied gibt, versuchen Sie zu erklären, warum.

... note:...: 

   parasitär


Die Bode Analysator-Anwendung führt einen Frequenz-Sweep durch.
es erzeugt ein Sinussignal auf OUT1 innerhalb des gewählten Frequenzbereichs.
von uns (im Einstellungsmenü).

Das IN1-Eingangssignal ist direkt mit OUT1 verbunden.
IN1=Vin. IN2 wird auf der anderen Seite der RLC-Schaltung angeschlossen und
von diesem IN2=Vout. Die Bode Analysator-Anwendung wird dann für jede der folgenden Anwendungen verwendet
Frequenzschritt das Verhältnis von IN1/IN2 nehmen und die Frequenz berechnen.
Antwort.  

2. Um zu sehen, wie sich die Signalamplitude von Vout/IN2 ändert, wird in der
   in Bezug auf OUT1 starten Sie die Oszilloskopanwendung, in OUT1
   Einstellungen aktivieren OUT1, deaktivieren Sie die SHOW-Taste und schauen Sie sich das Signal an.
   Amplituden von IN1 und IN2. 


   Ändern Sie die OUT1-Frequenz, stellen Sie den t/div-Wert so ein, dass Sie 2 Zyklen haben.
   das IN1 und beobachten Sie die Amplituden von IN1 und IN2. 


   Wiederholen Sie diesen Schritt für die OUT1-Frequenz von 100Hz bis 1MHz und Sie sollten Folgendes beachten 
   der gleiche Amplitudenverlauf, wie er von der Bode-Analysatoranwendung gemessen wird.


   Bode Analysator ist auch die Messphase zwischen IN1 und IN2. Phase ist
   auch frequenzabhängig.  Du kannst das leicht erkennen, wenn du die
   Oszilloskop-Anwendung. 


3. Wiederholen Sie das Experiment mit dem Serienschwingkreis in der Kategorie
   Figur 3, und verwenden Sie L1 = 20 mH und C1 = 0,01 uF und R1 = 1 KΩ. Der Vo
   Die Spannung am Widerstand ist proportional zur Serien-RLC-Schaltung.
   aktuell.
   

Fragen zu
---------

Zeichne den Spannungsverlauf der Schaltung auf und erhalte die Bandbreite aus
die Halbleistungsfrequenzen unter Verwendung von Gleichung (3). 
















































































































































































































































































































































