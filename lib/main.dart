import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo.shade700,
      appBar: AppBar(
        title: const Text('Dadoos'),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade900,
      ),
      body: const Dadoos(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int leftGivenNumber = 1;
  int rightDieNumber = 1;

  void changeFaceOfDie() {
    setState(() {
      leftGivenNumber = Random().nextInt(6) + 1;
      rightDieNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeFaceOfDie();
              },
              child: Image.asset('images/dado$leftGivenNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeFaceOfDie();
              },
              child: Image.asset('images/dado$rightDieNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
