import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String _displayText = "Go"; // Anfangstext

  void _updateText() async {
    await Future.delayed(
        const Duration(seconds: 2)); // Verzögerung von 2 Sekunden
    setState(() {
      _displayText =
          repeatString(_displayText); // Verwende deine Funktion aus Aufgabe 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mein Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _displayText,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateText,
              child: const Text("Button drücken"),
            ),
          ],
        ),
      ),
    );
  }
}

// Funktion der Aufgabe 1
String repeatString(String input) {
  return input * 3;
}
