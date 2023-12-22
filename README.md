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

A declarative UI tool for Flutter to simplify the creation of widgets, passing arguments in positional and without orders.


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
  styled: "^0.1.0"
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

- `Textd`: Returns a Text widget or a TextStyle if no String type argument is specified. 

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
With ***Mixin*** of Decoration:
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
<li> AboutDialogd
<li> AbsorbPointerd
<li> ActionChipd
<li> Actionsd
<li> AlertDialogAdaptived
<li> AlertDialogd
<li> Alignd
<li> AnimatedAlignd
<li> AnimatedBuilder
<li> AnimatedContainerd
<li> AnimatedCrossFaded
<li> AnimatedIcond
<li> AnimatedListd
<li> AnimatedOpacityd
<li> AnimatedPaddingd
<li> AnimatedPositionedd
<li> AnimatedSwitcherd
<li> AppBard (partial)
<li> AspectRatiod
<li> Autocomplete
<li> BackdropFilterd
<li> Badged
<li> Baselined
<li> BottomAppBard
<li> BottomNavigationBarItemd
<li> BottomNavigationBard
<li> Builderd
<li> CallbackShortcutsd
<li> Cardd
<li> Centerd
<li> CheckboxListTiled (partial)
<li> CheckedPopupMenuItemd
<li> Chipd
<li> ChoiceChipd
<li> CircleAvatard
<li> CircularProgressIndicatord
<li> ClipOvald
<li> ClipPathd
<li> ClipRRectd
<li> ClipRectd
<li> ColorFilteredd
<li> Columnd
<li> ConstrainedBoxd
<li> Containerd
<li> CustomMultiChildLayoutd
<li> CustomPaintd
<li> CustomScrollViewd
<li> CustomSingleChildLayoutd
<li> DataTabled (partial)
<li> DecoratedBoxTransitiond
<li> DecoratedSliverd
<li> DefaultTabControllerd
<li> DefaultTextStyled
<li> Dismissibled
<li> Dividerd
<li> DragTarget
<li> Draggable (partial)
<li> DraggableScrollableSheetd
<li> Drawerd
<li> ElevatedButtond
<li> ExcludeSemanticsd
<li> Expandedd
<li> ExpansionPanelListd
<li> OverlayPortald
</ul>
</td><td>
<ul>
<li> ExpansionPaneld
<li> FilledButtonTonalIcond
<li> FilledButtond
<li> FilterChipd
<li> FittedBoxd
<li> Flexd
<li> Flexibled
<li> Flipd as Transform.flip
<li> FloatingActionButtonExtendedd
<li> FloatingActionButtond
<li> Flowd
<li> FocusableActionDetectord
<li> Focusd
<li> FormField
<li> Formd
<li> FractionalTranslationd
<li> FractionallySizedBoxd
<li> GridTiled
<li> GridViewBuilderd
<li> GridViewCountd
<li> GridViewCustomd
<li> GridViewExtentd
<li> GridViewd
<li> HeroModed
<li> Herod
<li> IconButtond
<li> IgnorePointerd
<li> ImageAssetd
<li> ImageFiled
<li> ImageMemoryd
<li> ImageNetworkd
<li> Imaged
<li> IndexedStackd
<li> InkResponsed
<li> InkWelld
<li> Inkd
<li> InputChipd
<li> InteractiveViewerd
<li> IntrinsicHeightd
<li> IntrinsicWidthd
<li> LimitedBoxd
<li> LinearProgressIndicatord
<li> ListBodyd
<li> ListTiled (partial)
<li> ListViewBuilderd
<li> ListViewCustomd
<li> ListViewSeparatedd
<li> ListViewd (partial)
<li> ListWheelScrollViewd
<li> MergeSemanticsd
<li> MouseRegiond
<li> NavigationBard
<li> NavigationDestinationd
<li> NavigationDrawerd
<li> NavigationRailDestinationd
<li> NavigationRaild
<li> NestedScrollViewd
<li> NotificationListenerd
<li> Offstaged
<li> Opacityd
<li> OutlinedButtonIcond
<li> OutlinedButtond
<li> OverflowBoxd
<li> 
</ul>
</td><td>
<ul>
<li> Paddingd
<li> PageViewd (partial)
<li> PhysicalModeld
<li> Placeholderd
<li> PopScoped
<li> PopupMenuDividerd
<li> PopupMenuItemd
<li> Positionedd
<li> RadioListTiled
<li> Radiod
<li> RangeSliderd
<li> RawImaged
<li> RawKeyboardListenerd
<li> RawMagnifierd
<li> RawMaterialButtond
<li> RefreshIndicatord
<li> RepaintBoundaryd
<li> RichTextd
<li> Rotated as Transform.rotate
<li> RotatedBoxd
<li> Rowd
<li> SafeAread
<li> Scaffoldd (partial)
<li> Scaled as Transform.scale
<li> ScrollConfigurationd
<li> Scrollabled
<li> Scrollbard
<li> SegmentedButtond
<li> Semanticsd (partial)
<li> ShaderMaskd
<li> Shortcutsd
<li> SingleChildScrollViewd
<li> SizedBoxd
<li> SizedOverflowBoxd
<li> SliderAdaptived as Slider.adaptive
<li> Sliderd
<li> SliverAppBard (partial)
<li> SliverOffstaged
<li> SliverOverlapAbsorberd
<li> SliverOverlapInjectord
<li> SliverPaddingd
<li> SnackBard
<li> Spacerd
<li> Stackd
<li> SwitchListTiled
<li> Switchd
<li> TabBarViewd
<li> TabBard
<li> TabPageSelectord
<li> Tabd
<li> TableRowd
<li> Tabled
<li> TextButtonIcond
<li> TextButtond
<li> Textd
<li> TickerMode
<li> ToggleButtonsd
<li> ToolTipd
<li> Translated as Transform.translate
<li> UnconstrainedBoxd
<li> VerticalDividerd
<li> Visibilityd
<li> Wrapd
<li> 
</ul>
</td>
</tr></table>


### 
<ul style="column-count:3">
<li> BorderSided
<li> Borderd
<li> BottomSheetd
<li> BoxDecorationd
<li> BoxShadowd
<li> ButtonSegmentd
<li> DataCelld
<li> DataColumnd
<li> DataRowd
<li> DecorationImaged
<li> FlexibleSpaceBard
<li> ImageBlurd as ImageFilter.blur
<li> ImageCompose as ImageFilter.compose
<li> ImageDilated as ImageFilter.dilate
<li> ImageEroded as ImageFilter.erode
<li> LinearGradientd
<li> MagnifierDecorationd
<li> TextSpand
</ul>

### Known not supported:
<ul>
<li> ButtonStyle
<li> Cupertino widgets
<li> DropdownButton
<li> FutureBuilder
<li> GestureDetector
<li> ImageFilter.matrix
<li> LayoutBuilder
<li> LongPressDraggable
<li> PopupMenuButton
<li> Positioned.*
<li> ReorderableListView
<li> ReorderableListView.builder
<li> SelectableText
<li> SelectableText.rich
<li> StreamBuilder
<li> TableBorder
<li> TextField
<li> TextFormField
<li> TweenAnimationBuilder
<li> ValueListenableBuilder 
</ul>


## Changelog

Please see the [Changelog](https://github.com/rob333/styled/blob/main/CHANGELOG.md) page.



## License

Styled is distributed under the MIT License. See [LICENSE](https://github.com/rob333/styled/blob/main/LICENSE) for more information.
