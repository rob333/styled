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
        title: Textd("named arguments precede positional ones", 20,
            const Color.fromARGB(255, 33, 211, 71)),
      ),
      Rowd(
        MainAxisAlignment.center,
        Centerd(
          Columnd(
            MainAxisAlignment.center,
            Textd(
              'counter: $_counter',
              backgroundColor: Colors.amberAccent,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Styled("text int", 16),
            Styled("text double", 18.5),
            Styled("text TextStyle", Theme.of(context).textTheme.bodyLarge),
            Styled("Styled TextD", Textd(18.5, FontWeight.w300, Colors.orange)),
            Textd("Styled TextD2", Textd(18.5, backgroundColor: Colors.amber)),
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
            Rowd(
              MainAxisAlignment.center,
              Containerd(35, 35, const Color.fromARGB(255, 255, 0, 0)),
              Containerd(35, 35, const Color.fromARGB(255, 231, 255, 10)),
              Containerd(35, 35, const Color.fromARGB(255, 15, 221, 15)),
            ),
            Rowd(
              MainAxisAlignment.center,
              Containerd(
                35,
                35,
                BoxDecorationd(
                  Colors.red,
                  BoxShape.circle,
                  Borderd(3, Colors.redAccent),
                ),
              ),
              Containerd(
                35,
                35,
                BoxDecorationd(
                  Colors.yellow,
                  BoxShape.circle,
                  Borderd(3, Colors.yellowAccent),
                ),
              ),
              Containerd(
                35,
                35,
                BoxDecorationd(
                  Colors.green,
                  BoxShape.circle,
                  Borderd(3, Colors.greenAccent),
                ),
              ),
            ),
            Containerd(
              Paddingd(
                const EdgeInsets.all(5.5),
                Textd('This is a fancy container!', Colors.blue),
              ),
              BoxDecorationd(
                LinearGradientd(Colors.red, Colors.orange, Colors.yellow),
                BorderRadius.circular(20.0),
                BoxShadowd(
                  Colors.black.withOpacity(0.5),
                  10,
                  const Offset(0.0, 5.0),
                ),
              ),
            ),
            Containerd(
              45,
              45,
              // BoxDecorationd(
              Colors.blue,
              Borderd(Colors.black, 3),
              BorderRadius.circular(0.5),
              BoxShadowd(
                Colors.grey.withOpacity(0.5),
                7,
                5,
                const Offset(0, 3),
              ),
              borderRadius: BorderRadius.circular(10.5), // named arg precedes
              // ),
              // named decoration precedes
              decoration: BoxDecorationd(
                LinearGradientd(
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Alignment.topLeft,
                  Alignment.bottomRight,
                ),
                BorderRadius.circular(20.0),
                BoxShadowd(
                  Colors.black.withOpacity(0.5),
                  10,
                  const Offset(10.0, 10.0),
                ),
              ),
            ),
            Containerd(
              150,
              150,
              // decoration: BoxDecoration(
              const Color(0xff7c94b6),
              DecorationImaged(
                const NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                BoxFit.cover,
              ),
              Border.all(width: 3),
              borderRadius: BorderRadius.circular(12),
              // ),
            ),
          ),
        ),
        Columnd(
          MainAxisAlignment.center,
          Stackd(
            Containerd(80, 80, Colors.blue),
            Containerd(60, 60, Colors.yellow),
            Containerd(50, 50, Colors.red),
          ),
          Stackd(
            Alignment.center,
            Containerd(80, 80, Colors.blue, BoxShape.circle),
            Containerd(60, 60, Colors.yellow, BoxShape.circle),
            LimitedBoxd(
                30, 30, Containerd(50, 50, Colors.red, BoxShape.circle)),
          ),
          Stackd(
            Containerd(80, 80, color: Colors.white),
            Containerd(
              const EdgeInsets.all(5.0),
              Alignment.bottomCenter,
              LinearGradientd(
                Alignment.topCenter,
                Alignment.bottomCenter,
                Colors.black.withAlpha(0),
                Colors.black12,
                Colors.black45,
              ),
              Textd('Foreground', Colors.white, 20),
            ),
          ),
          ElevatedButtond(
            Textd("Button", 16, Colors.blue), // `child`
            () {}, // `onPressed`
          ),
          ElevatedButtond(
            const Icon(Icons.ac_unit_rounded), // `icon`
            Textd("label", 16), // `label`
            () {}, // `onPressed`
          ),
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
