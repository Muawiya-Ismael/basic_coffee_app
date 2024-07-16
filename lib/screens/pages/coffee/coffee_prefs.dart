

import 'package:flutter/material.dart';

import '../../../style/styled_body_text.dart';
import '../../../style/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  var strength = 1;
  var sugar = 0;

  void increaseStrenght(){
    setState(() {
      strength = strength < 5 ? strength+=1 :strength = 1;
    });
  }

  void increaseSugar(){
    setState(() {
      sugar = sugar < 5 ? sugar+=1 :sugar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         children: [
           const StyledBodyText("Strength: "),
           for(int i =1 ; i <= strength ; i++)
           Image.asset("assets/img/coffee.png",
             width: 25,
             colorBlendMode: BlendMode.multiply,
           ),
           const Expanded(child: SizedBox()),
           StyledButton(
               onPressed: increaseStrenght,
               child: const Icon(Icons.plus_one,color: Colors.white,)
           )
         ],
        ),
        Row(
          children: [
            const StyledBodyText("Sugars: "),
            if(sugar == 0)
              const StyledBodyText("No Sugar...")
            else
              for(int i = 1; i <= sugar ; i++)
              Image.asset("assets/img/sugar.png",
                width: 25,
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugar,
              child: const Icon(Icons.plus_one,color: Colors.white,),
            )

          ],
        ),
      ],
    );
  }
}
