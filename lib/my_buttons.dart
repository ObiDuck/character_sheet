import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class MyNextPageButton extends StatelessWidget {
  final String? buttonText;
  Widget? page;

  MyNextPageButton({required this.buttonText, required this.page, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.amber[100]!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side:
                          BorderSide(color: Color.fromARGB(255, 97, 18, 7))))),
          child: Text('$buttonText',
              style: GoogleFonts.poiretOne(
                  fontSize: 26, color: const Color.fromARGB(255, 97, 18, 7))),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page!),
            );
          },
        ),
      ),
    );
  }
}
