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

A declarative UI tool for flutter to simplify the creation of widgets, pass arguments in positional without order.


<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <img src="https://raw.githubusercontent.com/rob333/styled/main/doc/styled.webp">
    </td>
  </tr>
</table>
<!-- <div style="text-align: center">
<img src="image.jpg" alt="Image description">
</div> -->

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
  styled: "^0.0.10"
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
- Named arguments precede positional ones.

For example:
```dart
return Scaffoldd(
    AppBard(
      Theme.of(context).colorScheme.inversePrimary,
      Textd(widget.title),
    ),
    Centerd(
      Columnd(
        MainAxisAlignment.center,
        Textd('counter: $_counter'),
        Textd("TextD", 26, 12.5, FontWeight.bold, Colors.red),
        Textd("TextD2", Textd(18.5, FontWeight.w300, Colors.orange)),
        Rowd(
          MainAxisAlignment.center,
          Containerd(50, 50, const Color.fromARGB(255, 255, 0, 0)),
          Containerd(50, 50, const Color.fromARGB(255, 231, 255, 10)),
          Containerd(50, 50, const Color.fromARGB(255, 15, 221, 15)),
        ),
        Rowd(
          MainAxisAlignment.center,
          Containerd(35, 35, Colors.red, BoxShape.circle, Borderd(3, Colors.redAccent)),
          Containerd(Colors.yellow, BoxShape.circle, 35, 35, Borderd(3, Colors.yellowAccent)),
          Containerd(35, 35, Borderd(3, Colors.greenAccent), Colors.green, BoxShape.circle),
        ),
      ),
    ),
    FloatingActionButtond(
        _incrementCounter,
        'Increment',
        const Icon(Icons.add),
    ),
  );
```

Explained version:
```dart
return Scaffoldd(
    AppBard( // `AppBar` => 'appBar' of Scaffold
      Theme.of(context).colorScheme.inversePrimary, // `Color:0` => 'backgroundColor'
      Text(widget.title), // `Widget` => 'title'
      title: Textd("named arguments precede positional ones", 20,
          const Color.fromARGB(255, 33, 211, 71)), // override 'title' with named argument
      ),
    ),
    Centerd( // `Widget` => 'body' of Scaffold
      Columnd( // `Widget` => 'child' of Center
        MainAxisAlignment.center,
        Textd('counter: $_counter'), // `Widget` will be added into the children of Column|Row.
        // The inner Textd returns a `TextStyle`, when no text:String is specified.
        Textd("TextD2", Textd(18.5, FontWeight.w300, Colors.orange)),
        <Widget>[ // type of `List<Widget>` => 'children' of the Column
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


## Additional information

- `Textd`: Return a Text widget or a TextStyle if no String type argument is specified. 

- In the hint document, for example, `Color: 0:color, 1:backgroundColor, 2: decorationColor, 3:selectionColor` means the first Color type argument is treated as 'color', the second is 'backgroundColor', the third is 'decorationColor', and the fourth is 'selectionColor'.

- `Containerd` mixin with the `Decoration` arguments.
  - Precedence of mixin arguments, `Decoration` in the `Containerd`.
    1. Positional arguments of `Decoration` (Lowest)
    2. Positional `Decoration` object.
    3. Named arguments of `Decoration`
    4. Named `Decoration` object. (Highest)
   
For example:

With ***BoxDecoration***:
```dart
  Containerd(
    45, // width
    45, // height
    BoxDecorationd(
      Colors.blue,
      Borderd(Colors.black, 3),
      BoxShadowd(Colors.grey.withOpacity(0.5), 7, 5, const Offset(0, 3)),
      BorderRadius.circular(0.5),
      borderRadius: BorderRadius.circular(10.5), // named arg precedes positional one
    ),
  ),
```
With ***Mixin***:
```dart
  Containerd(
    45, // width
    45, // height
    Colors.blue,
    Borderd(Colors.black, 3),
    BoxShadowd(Colors.grey.withOpacity(0.5), 7, 5, const Offset(0, 3)),
    BorderRadius.circular(0.5),
    borderRadius: BorderRadius.circular(10.5), // named arg precedes positional one
  ),
```


## Supported Widgets

<table><tr>
<td>
<ul> <!--style="column-count:5"-->
<li> Textd
<li> Centerd
<li> Rowd
<li> Columnd
<li> Scaffoldd (partial)
<li> AppBard (partial)
<li> FloatingActionButtond (partial)
<li> Drawerd
<li> SafeAread
<li> Containerd
<li> Paddingd
<li> Stackd
<li> Positionedd
<li> ElevatedButtond
<li> SizedBoxd
<li> LimitedBoxd
<li> Spacerd
<li> ListViewd (partial)
<li> ListTiled (partial)
<li> GridViewd
<li> GridTiled
<li> GridViewBuilderd
<li> GridViewCountd
<li> GridViewCustomd
<li> GridViewExtentd
<li> Expandedd
<li> Wrapd
<li> Opacityd
<li> PageViewd (partial)
<li> Tabled
<li> TableRowd
<li> SliverAppBard (partial)
<li> Herod
<li> CustomPaintd
<li> ToolTipd
<li> IconButtond
<li> FittedBoxd
<li> AbsorbPointerd
<li> Rotated as Transform.rotate
<li> Scaled as Transform.scale
<li> Translated as Transform.translate
<li> Flipd as Transform.flip
<li> BackdropFilterd
<li> Alignd
<li> Dismissibled
<li> Flexibled
<li> AspectRatiod
<li> Placeholderd
<li> RichTextd
<li> IndexedStackd
</ul>
</td><td>
<ul>
<li> AnimatedContainerd
<li> AnimatedBuilder
<li> AnimatedListd
<li> AnimatedIcond
<li> AnimatedSwitcherd
<li> AnimatedPositionedd
<li> AnimatedPaddingd
<li> AnimatedOpacityd
<li> AnimatedCrossFaded
<li> Semanticsd (partial)
<li> ConstrainedBoxd
<li> FractionallySizedBoxd
<li> SingleChildScrollViewd
<li> DataTabled (partial)
<li> Sliderd
<li> SliderAdaptived as Slider.adaptive
<li> RangeSliderd
<li> AlertDialogd
<li> AlertDialogAdaptived as AlertDialog.adaptive
<li> DraggableScrollableSheetd
<li> ColorFilteredd
<li> ToggleButtonsd
<li> Imaged
<li> ImageAssetd
<li> ImageFiled
<li> ImageMemoryd
<li> ImageNetworkd
<li> DefaultTabControllerd
<li> TabBard
<li> Tabd
<li> TabBarViewd
<li> SnackBard
<li> ListWheelScrollViewd
<li> ShaderMaskd
<li> Builderd
<li> CircularProgressIndicatord
<li> LinearProgressIndicatord
<li> Dividerd
<li> IgnorePointerd
<li> CheckboxListTiled (partial)
<li> AboutDialogd
<li> Flexd
<li> InteractiveViewerd
<li> ClipRRectd
<li> ClipOvald
<li> ClipPathd
<li> ClipRectd
<li> ListViewBuilderd
<li> ListViewSeparatedd
<li> ListViewCustomd
</ul>
</td><td>
<ul>
<li> SwitchListTiled
<li> PhysicalModeld
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
</ul>
</td>
</tr></table>


### 
<ul style="column-count:5">
<li> BoxShadowd
<li> BoxDecorationd
<li> LinearGradientd
<li> BorderSided
<li> Borderd
<li> DecorationImaged
<li> ImageBlurd as ImageFilter.blur
<li> ImageDilated as ImageFilter.dilate
<li> ImageEroded as ImageFilter.erode
<li> ImageCompose as ImageFilter.compose
<li> TextSpand
<li> DataRowd
<li> DataColumnd
<li> DataCelld
<li> FlexibleSpaceBard
<!-- <li>
<li>
<li>
<li>
<li>
<li>
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li> 
<li>  -->
</ul>

### Known not supported:
<ul>
<li> layoutBuilder
<li> Positioned.*
<li> ValueListenableBuilder 
<li> ReorderableListView
<li> ReorderableListView.builder
<li> SelectableText
<li> SelectableText.rich
<li> TweenAnimationBuilder
<li> NotificationListener
<li> ---
<li> TableBorder
<li> ImageFilter.matrix
</ul>


## Changelog

Please see the [Changelog](https://github.com/rob333/styled/blob/main/CHANGELOG.md) page.



## License

Styled is distributed under the MIT License. See [LICENSE](https://github.com/rob333/styled/blob/main/LICENSE) for more information.
