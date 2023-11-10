import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/increment_provider.dart';

class CounterTwo extends StatelessWidget {
  const CounterTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Selector<IncrementProvider, int>(
      selector: (BuildContext context, IncrementProvider increment) => increment.getCounter, builder: (_, int counter, __) {
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
