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

  static List<Tab> myTabs = [
    Tabd('LEFT', const Icon(Icons.join_left)),
    Tabd('STRAIGHT', const Icon(Icons.straight)),
    Tabd('RIGHT', const Icon(Icons.join_right)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffoldd(
        AppBard(
          Theme.of(context).colorScheme.inversePrimary, // backgroundColor
          Text(widget.title), // title
          title: Textd("named arguments precede positional ones", 20, const Color.fromARGB(255, 33, 211, 71)),
          TabBard(myTabs),
        ),
        Rowd(
          MainAxisAlignment.center,
          Columnd(
            MainAxisAlignment.center,
            const Spacer(),
            const Text('Single choice'),
            const SingleChoice(),
            const SizedBox(height: 20),
            const Text('Multiple choice'),
            const MultipleChoice(),
            const Spacer(),
          ), // Column
          Centerd(
            Columnd(
              MainAxisAlignment.center,
              Textd(
                'counter: $_counter',
                backgroundColor: Colors.amberAccent,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Textd("text TextStyle", Theme.of(context).textTheme.bodyLarge),
              Textd("Styled TextD", Textd(18.5, FontWeight.w300, Colors.orange)),
              Textd("Styled TextD2", 18.5, backgroundColor: Colors.amber),
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
                Containerd(35, 35, Colors.red, BoxShape.circle, Borderd(3, Colors.redAccent)),
                Containerd(Colors.yellow, BoxShape.circle, 35, 35, Borderd(3, Colors.yellowAccent)),
                Containerd(35, 35, Borderd(3, Colors.greenAccent), Colors.green, BoxShape.circle),
              ),
              Containerd(
                Paddingd(
                  const EdgeInsets.all(5.5),
                  Textd('This is a fancy container!', Colors.blue),
                ),
                LinearGradientd(Colors.red, Colors.orange, Colors.yellow),
                BorderRadius.circular(20.0),
                BoxShadowd(
                  Colors.black.withOpacity(0.5),
                  10,
                  const Offset(0.0, 5.0),
                ),
              ),
              Containerd(
                45,
                45,
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
              RichTextd(
                TextSpand(
                  'This\n',
                  Textd(25, Colors.red, FontWeight.bold),
                  TextSpand('is link\n', Textd(20, Colors.blue, TextDecoration.underline)),
                  TextSpand('text.\n', Textd(Colors.yellow, FontStyle.italic)),
                  TextSpand('bold\n', Textd(Colors.purple, FontWeight.bold)),
                ),
              ), // RichTextd
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
              LimitedBoxd(30, 30, Containerd(50, 50, Colors.red, BoxShape.circle)),
            ),
            Stackd(
              Containerd(50, 50, color: Colors.white),
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
            // BackdropFilterd(
            //   ImageBlurd(5, 6), //ImageFilter.blur(sigmaX: 5, sigmaY: 6),
            ElevatedButtond(
              const Icon(Icons.ac_unit_rounded), // `icon`
              Textd("label", 16), // `label`
              () {}, // `onPressed`
            ),
            // ),
            Scaled(
              0.8,
              1.2,
              IconButtond(
                26.5, // `iconSize`
                8.5, // `splashRadius`
                const Icon(Icons.point_of_sale_rounded),
                "tooltip", // `tooltip`
                () {}, // `onPressed`
                Colors.green,
                Colors.greenAccent,
              ),
            ),
          ), // Column
        ),
        FloatingActionButtond(
          _incrementCounter, // `void Function()` => 'onPressed'
          'Increment', // `String` => 'tooltip'
          const Icon(Icons.add), // `Widget` => 'child'
        ),
      ),
    );
  }
}

enum Calendar { day, week, month, year }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButtond(
      ButtonSegmentd(value: Calendar.day, Textd('Day'), const Icon(Icons.calendar_view_day)),
      ButtonSegmentd(value: Calendar.week, Textd('Week'), const Icon(Icons.calendar_view_week)),
      ButtonSegmentd(value: Calendar.month, Textd('Month'), const Icon(Icons.calendar_view_month)),
      ButtonSegmentd(value: Calendar.year, Textd('Year'), const Icon(Icons.calendar_today)),
      {calendarView},
      (Set newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}

enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set selection = {Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButtond(
      ButtonSegmentd(value: Sizes.extraSmall, Textd('XS')),
      ButtonSegmentd(value: Sizes.small, Textd('S')),
      ButtonSegmentd(value: Sizes.medium, Textd('M')),
      ButtonSegmentd(value: Sizes.large, Textd('L')),
      ButtonSegmentd(value: Sizes.extraLarge, Textd('XL')),
      selection,
      (Set newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true, // bool:0 also is `multiSelectionEnabled`
    );
  }
}
