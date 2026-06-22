import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _buttonTapped = false;

  void _handleTap() {
    setState(() {
      _buttonTapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Web App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _handleTap,
          child: Text(_buttonTapped ? 'Button Tapped' : 'Hello Flutter Web'),
        ),
      ),
    );
  }
}