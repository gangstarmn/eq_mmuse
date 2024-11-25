import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mmuse/screen/home/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Text("HEELO");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TabScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final ValueNotifier<int> _count = ValueNotifier(0);

  void _incrementCounter() {
    bool isLoading = false;
    //TO DO;
    _counter++;
    _count.value++;
    log("_counter $_counter");
    log("_count ${_count.value}");
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return EQScafolld(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     const Text(
          //       'You have pushed the button this many times ',
          //     ),
          //     Text(
          //       '${_count.value}',
          //       style: Theme.of(context).textTheme.headlineMedium,
          //     ),
          //   ],
          // ),
          ),
    );
  }
}

class EQScafolld extends StatelessWidget {
  final Widget body;
  const EQScafolld({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
