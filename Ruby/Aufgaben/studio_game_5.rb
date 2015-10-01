# a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, 
# => Winter an; sowohl in der Langform, als auch der Kurzform
# b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite 
# => im Array ist
# c. fuegen Sie das Element fruehjahr hinzu
# d. entfernen Sie das Element wieder aus dem Array
# e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten 
# => Ausgabe behilflich sein kann: Sommer und Herbst und Winter
# f. notieren Sie den Befehl
# g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem 
# => Zufallsprinzip anordnen koennen
# h. packen Sie Ihre drei Player aus dem Projekt in ein Array
# i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit 
# => einer Zeile, in der sie die Anzahl der Mitspieler notieren

jahreszeiten =["Sommer", "Herbst", "Winter"] #langform für den Aufruf eines Arrays
jahreszeiten.size #anzahl Inhalte eines arrays ausgeben
jahreszeiten.reverse # reihenfolge drehen. (umgekehrt)
jahreszeiten[1] #gibt den inhalt nummer 2 in dem array aus (bei 0 wird angefangen zu zählen.)
jahreszeiten =%w(Sommer Herbst Winter) #kurzform für den Aufruf eines Arrays

jahreszeiten.join(" und ") #ziwschen die Einzellnen Arrays soll ein "und" eingefügt werden.

player =%w(Nicolas, Kevin, Yannik)

