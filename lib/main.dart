import 'package:flutter/material.dart';
import 'package:flutter_managing_state_with_provider/providers/increment_provider.dart';
import 'package:flutter_managing_state_with_provider/screens/home_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<IncrementProvider>(
      create: (context) => IncrementProvider(),
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



