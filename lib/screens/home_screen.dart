
import 'package:flutter/material.dart';
import '../widgets/counter_one.dart';
import '../widgets/middle_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    debugPrint("build=====>>>Home");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Managing state with provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Managing state with provider',
                style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors
                    .deepOrange,),
              ),
            ),
            const SizedBox(height: 20.0),
            const CounterOne(),
            const SizedBox(height: 20.0),
            const MiddleContainer(),
          ],
        ),
      ),
    );
  }
}