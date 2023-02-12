import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100]!,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Character Name',
              style: GoogleFonts.poiretOne(
                  fontSize: 26, color: const Color.fromARGB(255, 97, 18, 7))),
        ),
        const FractionallySizedBox(
          alignment: Alignment.topCenter,
          widthFactor: 0.5,
          child: Image(image: AssetImage('images/Eve.jpg')),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Ideals: Тут будет текст об идеалах персонажа',
                style: GoogleFonts.poiretOne(
                    fontSize: 26, color: const Color.fromARGB(255, 97, 18, 7))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Bonds: Тут будет какая-то привязка идеалов к жизненным ситуациям',
                style: GoogleFonts.poiretOne(
                    fontSize: 26, color: const Color.fromARGB(255, 97, 18, 7))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Flaw: А здесь будет какой-то недостаток персонажа',
                style: GoogleFonts.poiretOne(
                    fontSize: 26, color: const Color.fromARGB(255, 97, 18, 7))),
          ),
        ),
      ]),
    );
  }
}
