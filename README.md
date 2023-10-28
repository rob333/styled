# Styled
<a href="https://pub.dev/packages/styled">
  <img src="https://img.shields.io/pub/v/styled.svg" alt="pub.dev"></a>
<a href="https://github.com/rob333/styled/blob/main/LICENSE">
  <img src="https://img.shields.io/github/license/rob333/styled.svg" alt="License"></a>
<a href="https://github.com/rob333/styled/actions">
  <img src="https://github.com/rob333/styled/workflows/Build/badge.svg" alt="Build Status"></a>
<a href="https://github.com/rob333/styled">Styled in Github</a>

<br>

## Features

A declarative UI tool to simplify the creation of flutter widgets. Pass arguments in positional and without order.

<!-- ## Getting started -->

## Use this package as a library

### Depend on it

Run this command:

With Flutter:

```
 $ flutter pub add styled
```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```yaml
dependencies:
  styled: "^0.0.9"
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.


### Import it

Now in your Dart code, you can use:

```dart
import 'package:styled/styled.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.dev/docs).

## Usage

- For supported widgets, add a suffix 'd' to the widget name to use the simplified version of it.
- Named arguments will override positional ones.

For example:
```dart
return Scaffoldd(
    AppBard( // `AppBar` => 'appBar' of Scaffold
      Theme.of(context).colorScheme.inversePrimary, // `Color:0` => 'backgroundColor'
      Text(widget.title), // `Widget` => 'title'
      title: Textd("named argument overrides positional one", 20,
          const Color.fromARGB(255, 33, 211, 71)), // override 'title' with named argument
      ),
    ),
    Centerd( // `Widget` => 'body' of Scaffold
      Columnd( // `Widget` => 'child' of Center
        MainAxisAlignment.center,
        <Widget>[ // type of `List<Widget>` => 'children' of Column
          const Text('You have pushed the button this many times:'),
          Textd('$_counter'),
          Textd(
            "TextD", // `String` => text to display
            26,   // 1st of type `int|double` => 'fontSize'
            12.5, // 2nd of type `int|double` => 'letterSpacing'
            FontWeight.bold,
            FontStyle.italic,
            // 1st of type `Color` => 'color'
            Colors.red,
            // 2nd of type `Color` => 'backgroundColor'
            const Color.fromARGB(255, 55, 101, 228),
            // 3rd of type `Color` => 'decorationColor'
            const Color.fromARGB(255, 226, 223, 33),
            // use enum:TextMaxLines to set maxlines
            TextMaxLines.three,
            // override `backgroundColor` with named argument
            backgroundColor: Colors.greenAccent,
          ),
        ],
      ),
    ),
    FloatingActionButtond( // => 'floatingActionButton' of Scaffold
        _incrementCounter,     // `void Function()` => 'onPressed' 
        'Increment',           // `String` => 'tooltip'
        const Icon(Icons.add), // `Widget` => 'child'
    ),
  );
```

Clean verion:
```dart
return Scaffoldd(
    AppBard(
      Theme.of(context).colorScheme.inversePrimary,
      Textd(widget.title),
    ),
    Centerd(
      Columnd(
        MainAxisAlignment.center,
        <Widget>[
          Textd('You have pushed the button this many times:'),
          Textd('$_counter'),
          Textd("TextD", 26, 12.5, FontWeight.bold, Colors.red),
        ],
      ),
    ),
    FloatingActionButtond(
        _incrementCounter,
        'Increment',
        const Icon(Icons.add),
    ),
  );
```

## Additional information

- `Textd`: Return a Text widget or a TextStyle if no String type argument is specified. 

- In the hint document, for example, `Color: 0:color, 1:backgroundColor, 2: decorationColor, 3:selectionColor` means the first Color type argument is treated as 'color', the second is 'backgroundColor', the third is 'decorationColor', and the fourth is 'selectionColor'.

- Named arguments will override positional ones.


<!-- TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more. -->


## Supported Widgets

- Textd
- Centerd
- Rowd
- Columnd
- Scaffoldd
- AppBard
- FloatingActionButtond

## Changelog

Please see the [Changelog](https://github.com/rob333/styled/blob/main/CHANGELOG.md) page.



## License

Styled is distributed under the MIT License. See [LICENSE](https://github.com/rob333/styled/blob/main/LICENSE) for more information.
