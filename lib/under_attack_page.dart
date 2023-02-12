import 'package:flutter/material.dart';
import 'my_buttons.dart';

class UnderAttackPage extends StatelessWidget {
  const UnderAttackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          children: const [
            MyExpandedText(text: 'HP: 55'),
            MyExpandedText(text: 'AC: 19'),
          ],
        ),
        Container(
            decoration: BoxDecoration(
              color: Colors.amber[100],
              border: Border.all(
                color: const Color.fromARGB(255, 97, 18, 7),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Column(
              children: [
                Row(
                  children: const [
                    MyExpandedText(text: 'STR: 18'),
                    MyExpandedText(text: 'INT: 17'),
                  ],
                ),
                Row(
                  children: const [
                    MyExpandedText(text: 'DEX: 10'),
                    MyExpandedText(text: 'WIS: 13'),
                  ],
                ),
                Row(
                  children: const [
                    MyExpandedText(text: 'CON: 13'),
                    MyExpandedText(text: 'CHA: 10'),
                  ],
                ),
              ],
            )),
        const MyExpandedText(
          text: 'Abilities and Spells',
        ),
      ]),
    );
  }
}
