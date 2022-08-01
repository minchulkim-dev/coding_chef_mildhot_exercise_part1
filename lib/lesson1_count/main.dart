import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times'),
              Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
