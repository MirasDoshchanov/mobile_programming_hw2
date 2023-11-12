import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          backgroundColor: Color(0xff5c2195), 
        ),
        backgroundColor: Colors.grey[200], 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GreetingWidget('Hello!'),
              ),
              CounterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String greeting;

  GreetingWidget(this.greeting);

  @override
  Widget build(BuildContext context) {
    return Text(
      greeting,
      style: TextStyle(fontSize: 20),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Count: $counter',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green, 
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _resetCounter,
          child: Text('Reset'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red, 
          ),
        ),
      ],
    );
  }
}
