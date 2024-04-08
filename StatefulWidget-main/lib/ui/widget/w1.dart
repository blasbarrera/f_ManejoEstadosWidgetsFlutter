import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
   const W1({super.key, required this.value, required this.incrementBig, required this.decrementBig});
   
  final String value;
  final Function incrementBig;
  final Function decrementBig;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          key: const Key('W1Value'),
        ),
        IconButton(onPressed: (){incrementBig();}, icon: Icon(Icons.add), key: Key('W1Add')),
        IconButton(onPressed: (){decrementBig();}, icon: Icon(Icons.remove), key: Key('W1Sub'))
      ],
    );
  }
}
