import 'package:flutter/material.dart';
import 'my_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class UnderAttackPage extends StatelessWidget {
  const UnderAttackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          children: const [
            MyExpandedTextWithToolTip(
                text: 'HP: 55',
                toolTipText:
                    'Это твое здоровье. Пока оно больше 0 - все хорошо'),
            MyExpandedTextWithToolTip(
                text: 'AC: 19',
                toolTipText:
                    'Это твоя броня. Противнику надо прокинуть больше этого числа чтобы попасть по тебе'),
          ],
        ),
        Container(
            child: Column(
          children: [
            Row(
              children: const [
                MyExpandedTextWithToolTip(
                    text: 'STR: 18',
                    toolTipText:
                        'Сила: Насколько хорошо ты сможешь смять томат'),
                MyExpandedTextWithToolTip(
                    text: 'INT: 17',
                    toolTipText: 'Интеллект: Знаешь, что томат - это фрукт'),
              ],
            ),
            Row(
              children: const [
                MyExpandedTextWithToolTip(
                    text: 'DEX: 10',
                    toolTipText:
                        'Ловкость: Насколько точно можешь бросить томат'),
                MyExpandedTextWithToolTip(
                    text: 'WIS: 13',
                    toolTipText:
                        'Мудрость: Знаешь, что не надо класть томат во фруктовый салат'),
              ],
            ),
            Row(
              children: const [
                MyExpandedTextWithToolTip(
                    text: 'CON: 13',
                    toolTipText:
                        'Телосложение: Насколько плохо тебе будет после того как съешь испорченный томат'),
                MyExpandedTextWithToolTip(
                    text: 'CHA: 10',
                    toolTipText:
                        'Харизма: Возможность продать томатный сок как фруктовый смузи'),
              ],
            ),
          ],
        )),
        const MyExpandedText(text: 'Abilities and Spells'),
      ]),
    );
  }
}
