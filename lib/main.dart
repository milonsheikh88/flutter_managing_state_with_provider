import 'package:flutter/material.dart';
import 'package:flutter_managing_state_with_provider/models/increment.dart';
import 'package:flutter_managing_state_with_provider/widgets/counter_one.dart';
import 'package:flutter_managing_state_with_provider/widgets/middle_container.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Increment>(
      create: (context) => Increment(),
      child: MaterialApp(
        title: 'Managing state with provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Managing state with provider'),
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
                style: TextStyle(fontSize: 22.0),
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


