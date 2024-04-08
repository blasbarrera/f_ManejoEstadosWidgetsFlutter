
import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value, required this.incrementSmall, required this.decrementSmall});


  final String value;
  final Function incrementSmall;
  final Function decrementSmall;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value, key: Key('W3Value')),
        IconButton(
          onPressed: (){incrementSmall();},
          icon: Icon(Icons.add),
          key: Key('W3Add'),
        ),
        IconButton(onPressed: (){decrementSmall();},
         icon: Icon(Icons.remove),
          key: Key('W3Sub'))
      ],
    );
  }
}
