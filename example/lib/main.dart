import 'package:flutter/material.dart';

import 'package:styled/styled.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffoldd(
      AppBard(
        Theme.of(context).colorScheme.inversePrimary, // backgroundColor
        Text(widget.title), // title
        title: Textd("named argument overrides positional one", 20,
            const Color.fromARGB(255, 33, 211, 71)),
      ),
      Centerd(
        Columnd(
          MainAxisAlignment.center,
          <Widget>[
            const Text('You have pushed the button this many times:'),
            Textd(
              '$_counter',
              backgroundColor: Colors.amberAccent,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Styled("text int", 16),
            Styled("text double", 18.5),
            Styled("text TextStyle", Theme.of(context).textTheme.bodyLarge),
            Styled("Styled TextD", Textd(18.5, FontWeight.w300, Colors.orange)),
            Styled("Styled TextD2", Textd(18.5, backgroundColor: Colors.amber)),
            Textd(
              "TextD", // text
              26, // 1st of type `int|double` which is 'fontSize'
              12.5, // 2nd of type `int|double` which is 'letterSpacing'
              FontWeight.bold,
              FontStyle.italic,
              // 1st of type `Color`, which is 'color'
              Colors.red,
              // 2nd of type `Color`, which is 'backgroundColor'
              const Color.fromARGB(255, 55, 101, 228),
              // 3rd of type `Color`, which is 'decorationColor'
              const Color.fromARGB(255, 226, 223, 33),
              // use enum:TextMaxLines to set maxlines
              TextMaxLines.three,
              // override `backgroundColor` with named argument
              backgroundColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
      FloatingActionButtond(
        _incrementCounter, // `void Function()` => 'onPressed'
        'Increment', // `String` => 'tooltip'
        const Icon(Icons.add), // `Widget` => 'child'
      ),
    );
  }
}
