import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'character_page.dart';
import 'under_attack_page.dart';
import 'inventory_page.dart';
import 'my_turn_page.dart';
import 'out_of_combat_page.dart';
import 'my_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        MyNextPageButton(
            buttonText: 'Мой персонаж', page: const CharacterPage()),
        MyNextPageButton(
            buttonText: 'Меня атакуют', page: const UnderAttackPage()),
        MyNextPageButton(buttonText: 'Мой ход', page: const MyTurnPage()),
        MyNextPageButton(buttonText: 'Вне боя', page: const OutOfCombatPage()),
        MyNextPageButton(buttonText: 'Инвентарь', page: const InventoryPage())
      ]),
    );
  }
}
