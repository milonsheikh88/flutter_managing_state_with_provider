import 'package:flutter/material.dart';
import 'child_container.dart';
import 'counter_two.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ChildContainer(),
          SizedBox(width: 20.0),
          CounterTwo(),
        ],
      ),
    );
  }
}
