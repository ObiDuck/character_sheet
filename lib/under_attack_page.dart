import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UnderAttackPage extends StatelessWidget {
  const UnderAttackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ]),
    );
  }
}