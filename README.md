# mobile_programming_hw2
(I) How to run project:
1. Login to/Create a Flutlab Account:
2. Create a New Project:
3. Copy and Paste Code:
4. Paste Code into Flutlab:
5. Run the Project:

(II) What each part of code does:
1. main.dart:
This is the entry point of the Flutter application.
It defines the MyApp class, which is a stateless widget representing the entire application.
The MyApp widget contains a Scaffold with an AppBar and a body that includes a Column containing a Container with a frame for the greeting message and a CounterWidget.

2. GreetingWidget:
A stateless widget that displays a greeting message inside a Container. The greeting message is passed as a parameter to the widget.

3. CounterWidget:
A stateful widget that displays a counter value along with two buttons: "Increment" and "Reset."
The _CounterWidgetState class manages the state of the counter.
The ElevatedButton widgets are used for the "Increment" and "Reset" buttons, and their styles are customized to have different colors.

4. Styling and Layout:
Styling is applied using the style property in the Text widget for the greeting message and in the ElevatedButton.styleFrom for the buttons.
SizedBox widgets are used to add spacing between the greeting message and the counter.

5. Colors and Decorations:
Colors are applied to the app bar, background, frame, and buttons to enhance the visual appearance of the application.
The frame for the greeting message is created using a Container with specified padding, margin, and decoration.
