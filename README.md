## Getting Started

In terminal run 'flutter run'

In the body there are widgets: `MessageWidget` StatelessWidget and 2. `CounterStatefulWidget` StatefulWidget.

The `MessageWidget`, as the first widget in our project, accepts a text parameter of type String. It uses the Text widget to display the provided text with a customized style. 

The widget `MyCounterWidget` is a StatefulWidget that has a counter value and a button. Every time the button is pressed, the `_incrementCounter` function is triggered, incrementing the counter value and calling the `setState` function.