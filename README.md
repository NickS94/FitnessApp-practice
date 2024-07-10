# Fitness-App

*Eine Fitness-App mit einem gemeinsamen Repository und einem eigenen ViewModel für jede View.*

In der heutigen Aufgabe geht es darum, für jede View ein eigenes ViewModel zu implementieren. Alle diese ViewModels sollen anschließend dasselbe Repository benutzen, welches Funktionen für den Datenabruf und die Bearbeitung bereitstellt.

Alle Views der App sind bereits fertig, es fehlen nur der Code in den ViewModels und im Repository.

## Repository

In dem Ordner "Models" befinden sich das Repository, welches ersteinmal nur eine leere Liste für das Speichern einzelner Workouts enthält. Weitere Model-Structs finden sich in demselben Ornder. Erweitere das Repository um folgende Funktionalitäten:
- eine Möglichkeit, eine Singleton-Instanz davon zu erstellen
- die Liste der voreingestellten FitnessProgramme zu holen (als Funktion)
- die Liste der gespeicherten Workouts zu holen (als Funktion)
- eine Funktion, um ein Workout zu "Speichern"
- eine Funktion, um ein gespeichertes Workout wieder zu entfernen

## Fitness-Programs Liste

In dem Ordner "FitnessPrograms" befindet sich die View für dieses Feature und das dazugehörige ViewModel. Erweitere das ViewModel um die Funktionalität, der View die Liste der voreingestellten Fitness-Programme bereitzustellen. Nutze dabei das Repository. Binde das ViewModel anschließend an die View an.

## Fitness-Programs Detail

In dem Ordner "FitnessProgramDetail" befindet sich die View für dieses Feature und das dazugehörige ViewModel. Erweitere das ViewModel um die Funktionalität, ein einzelnes Workout oder alle Workouts der Fitness-Programms zu speichern. Nutze dabei das Repository. Binde das ViewModel anschließend an die View an.

## Meine Workouts

In dem Ordner "MyWorkouts" befindet sich die View für dieses Feature und das dazugehörige ViewModel. Erweitere das ViewModel um folgende Funktionalitäten:
- die Liste der gespeicherten Workouts der View bereitstellen
- ein Workout abschließen, also es aus den gespeicherten Workouts entfernen
- das Bereitstellen der Gesamtdauer für alle Workouts aus der Liste als String
- Herausfinden, ob die Gesamtdauer angezeigt werden soll. Wenn keine Workouts gespeichert sind, soll die Gesamtdauer nicht angezeigt werden.
Nutze dabei das Repository. Binde das ViewModel anschließend an die View an. Überlege, ob und wie man die Liste der gespeicherten Workouts aktualisieren muss, damit die auf dem ersten Tab gespeicherten Workouts in der Liste angezeigt werden, wenn diese View wieder erscheint. 
