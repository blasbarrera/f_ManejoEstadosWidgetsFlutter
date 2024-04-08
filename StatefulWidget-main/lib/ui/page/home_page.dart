import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  double value = 0.5;

  incrementBig() {
    setState(() {
      value = value + 1;
    });
  }

  decrementBig() {
    setState(() {
      value = value - 1;
    });
  }

  incrementSmall() {
    setState(() {
      value = value + .1;
    });
  }

  decrementSmall() {
    setState(() {
      value = value - .1;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  value = 0;
                });
              },
              icon: Icon(Icons.refresh),
              key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                  value: value.toString(),
                  incrementBig: incrementBig,
                  decrementBig: decrementBig),
              W2(value: value),
              W3(
                  value: value.toString(),
                  incrementSmall: incrementSmall,
                  decrementSmall: decrementSmall)
            ],
          ),
        ],
      )),
    );
  }
}
