import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Pergunte Qualquer Coisa'),
        centerTitle: true,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            imageNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$imageNumber.png'),
      ),
    );
  }
}