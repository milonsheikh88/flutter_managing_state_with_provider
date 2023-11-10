import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/increment_provider.dart';

class CounterOne extends StatelessWidget {
  const CounterOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<IncrementProvider>(builder: (context,incrementProvider,child) {
      return Container(
        color: Colors.red[100],
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              '${incrementProvider.getCounter}',
              style: const TextStyle(fontSize: 48.0),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(12)),
              onPressed: () => incrementProvider.increment(),
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      );
    });
  }
}
