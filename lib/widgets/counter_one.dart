import 'package:flutter/material.dart';
import 'package:flutter_managing_state_with_provider/models/increment.dart';
import 'package:provider/provider.dart';

class CounterOne extends StatelessWidget {
  const CounterOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            // '${Provider.of<Increment>(context).counter}',
           '${context.watch<Increment>().counter}',
            style: const TextStyle(fontSize: 48.0),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(12)),
            // onPressed: () => Provider.of<Increment>(context, listen: false).increment(),
            onPressed: () => context.read<Increment>().increment(),
            child: const Text(
              'Increment',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
