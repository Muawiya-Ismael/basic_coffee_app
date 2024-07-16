import 'package:flutter/material.dart';

import '../../style/styled_body_text.dart';
import 'coffee/coffee_prefs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('How I like my coffee...'),
          ),
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20),
              child: const  CoffeePrefs(),
            ),
          Expanded(
              child: Image.asset("assets/img/wall.jpg", fit: BoxFit.fitWidth,),
          )
        ]
    );
  }
}

