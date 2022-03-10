import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const addButtonKey = ValueKey('addButtonKey');
const subtractButtonKey = ValueKey('subtractButtonKey');
const counterTextKey = ValueKey('counterTextKey');

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Testing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Value Of Counter',
            ),
            Text(
              '$_counter',
              key: counterTextKey,
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  key: subtractButtonKey,
                  onTap: () => _decrement(),
                  child: Container(
                    width: 75,
                    height: 75,
                    child: const Center(
                        child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                InkWell(
                  key: addButtonKey,
                  onTap: () => _incrementCounter(),
                  child: Container(
                    width: 75,
                    height: 75,
                    child: const Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
