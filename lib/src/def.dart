// ignore_for_file: constant_identifier_names
import 'core.dart';
import 'variadic.dart';

import 'widgets/textd.dart';
import 'widgets/layout/columnd.dart';
import 'widgets/layout/rowd.dart';
import 'widgets/layout/centerd.dart';
import 'widgets/scaffoldd.dart';
import 'widgets/items/appbard.dart';
import 'widgets/items/floatingactionbuttond.dart';

/// Return various depends on the arguments.
///
/// `(String text, double fontSize)` => Text
///
/// `(String text, int fontSize)` => Text
///
/// `(String text, TextStyle style)` => Text
///
const Styled = Variadic(core) as dynamic;

/// Return a Text widget or a TextStyle if no String type argument is specified.
///
/// **supported for positional arguments:**<br>
/// `String`: text
///
/// `int`: 0:fontSize, 1:letterSpacing, 2:wordSpacing, 3:height,
/// 4:decorationThickness, 5:textScaleFactor
///
/// `String`: 0:text, 1:fontFamily, 2:semanticsLabel, 3:debugLabel, 4:package
///
/// `Color`: 0:color, 1:backgroundColor, 2: decorationColor, 3:selectionColor
///
/// `TextMaxLines`: TextMaxLines enum
///
/// `bool`: softWrap
///
/// `Paint`: 0:foreground, 1:background
///
/// `List<String>`: fontFamilyFallback
///
/// `style, strutStyle, textAlign, textDirection, locale, overflow,
///  textWidthBasis, textHeightBehavior, fontWeight, fontStyle, textBaseline,
///  leadingDistribution, decoration, decorationStyle,
///  shadows:List<Shadow>, fontFeatures:List<FontFeature>, fontVariations:List<FontVariation>`
const Textd = Variadic(textd) as dynamic;

/// Return a `Column` widget.
///
/// **supported for positional arguments:**<br>
/// `mainAxisAlignment, mainAxisSize, crossAxisAlignment, textDirection,
///  verticalDirection, textBaseline, children:List<Widget>`
const Columnd = Variadic(columnd) as dynamic;

/// Return a `Row` widget.
///
/// **supported for positional arguments:**<br>
/// `mainAxisAlignment, mainAxisSize, crossAxisAlignment, textDirection,
///  verticalDirection, textBaseline, children:List<Widget>`
const Rowd = Variadic(rowd) as dynamic;

/// Return a `Center` widget.
///
/// **supported for positional arguments:**<br>
/// `double`: widthFactor, heightFactor
const Centerd = Variadic(centerd) as dynamic;

/// Return a `Scaffold` widget.
///
/// **supported for positional arguments:**<br>
/// `Drawer`: 0:drawer, 1:endDrawer
///
/// `void Function(bool)`: 0:onDrawerChanged, 1:onEndDrawerChanged
///
/// `Color`: 0:backgroundColor, 1:drawerScrimColor
///
/// `double`: drawerEdgeDragWidth
///
/// `List<Widget>`: persistentFooterButtons
///
/// `body, appBar, floatingActionButton, body, bottomNavigationBar, bottomSheet,
/// floatingActionButtonLocation, floatingActionButtonAnimator,
/// persistentFooterAlignment`
///
/// ***not supported:***<br>
/// `resizeToAvoidBottomInset, primary, extendBody, extendBodyBehindAppBar,
/// drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture, drawerDragStartBehavior,
/// restorationId`
const Scaffoldd = Variadic(scaffoldd) as dynamic;

/// Return a `FloatingActionButton` widget.
///
/// **supported for positional arguments:**<br>
/// `Color`: 0:foregroundColor, 1:backgroundColor, 2:focusColor, 3:hoverColor, 4:splashColor
///
/// `double`: 0:elevation, 1:focusElevation, 2:hoverElevation, 3:highlightElevation, 4disabledElevation
///
/// `String`: tooltip
///
/// `child, onPressed, mouseCursor, shape, clipBehavior,
/// focusNode, materialTapTargetSize, autofocus`
///
/// ***not supported:***<br>
/// `mini, isExtended, enableFeedback`
const FloatingActionButtond = Variadic(floatingactionbuttond) as dynamic;

/// Return a `AppBar` widget.
///
/// **supported for positional arguments:**<br>
/// `Widget`: 0:title, 1:leading, 2:flexibleSpace
///
/// `Color`: 0:backgroundColor, 1:foregroundColor, 2:shadowColor, 3:surfaceTintColor
///
/// `IconThemeData`: 0:iconTheme, 1:actionsIconTheme
///
/// `TextStyle`: 0:toolbarTextStyle, 1:titleTextStyle
///
/// `bottom, actions, notificationPredicate, shape, systemOverlayStyle, clipBehavior`
///
/// ***not supported:***<br>
/// `automaticallyImplyLeading, primary, centerTitle, excludeHeaderSemantics,
/// forceMaterialTransparency, elevation, scrolledUnderElevation, titleSpacing,
/// toolbarOpacity, bottomOpacity, toolbarHeight, leadingWidth`
const AppBard = Variadic(appbard) as dynamic;
