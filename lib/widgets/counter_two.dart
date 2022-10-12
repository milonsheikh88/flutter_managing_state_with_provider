import 'package:flutter/material.dart';
import 'package:flutter_managing_state_with_provider/models/increment.dart';
import 'package:provider/provider.dart';

class CounterTwo extends StatelessWidget {
  const CounterTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Selector<Increment, int>(
      selector: (BuildContext context, Increment increment) => increment.getCounter, builder: (_, int counter, __) {
        return Container(
          color: Colors.yellow[100],
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$counter',
            style: const TextStyle(fontSize: 24.0),
          ),
        );
      },
    );
  }
}
