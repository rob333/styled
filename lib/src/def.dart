// ignore_for_file: constant_identifier_names

import 'widgets/controls/elevated_buttond.dart';
import 'widgets/items/decoration_imaged.dart';
import 'widgets/layout/paddingd.dart';
import 'widgets/items/borderd.dart';
import 'widgets/items/border_sided.dart';
import 'widgets/items/linear_gradientd.dart';
import 'widgets/items/box_decorationd.dart';
import 'widgets/items/box_shadowd.dart';
import 'widgets/items/appbard.dart';
import 'widgets/items/floating_action_buttond.dart';
import 'widgets/items/drawerd.dart';
import 'widgets/layout/limited_boxd.dart';
import 'widgets/layout/positionedd.dart';
import 'widgets/layout/stackd.dart';
import 'widgets/layout/containerd.dart';
import 'widgets/layout/columnd.dart';
import 'widgets/layout/rowd.dart';
import 'widgets/layout/centerd.dart';
import 'widgets/layout/safeared.dart';
import 'widgets/scaffoldd.dart';
import 'widgets/textd.dart';

import 'core.dart';
import 'variadic.dart';

/// Return various depends on the arguments.
///
/// `(String text, double fontSize)` => Text
///
/// `(String text, int fontSize)` => Text
///
/// `(String text, TextStyle style)` => Text
///
const Styled = Variadic(core) as dynamic;

/// Returns a Text widget or a TextStyle if no String type argument is specified.
///
/// **supported positional arguments:**<br>
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

/// Returns a `Column`.
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// **supported positional arguments:**<br>
/// `Widget, children:List<Widget>, mainAxisAlignment, mainAxisSize, crossAxisAlignment,
///  textDirection, verticalDirection, textBaseline`
const Columnd = Variadic(columnd) as dynamic;

/// Returns a `Row`.
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// **supported positional arguments:**<br>
/// `Widget, children:List<Widget>, mainAxisAlignment, mainAxisSize, crossAxisAlignment,
///  textDirection, verticalDirection, textBaseline`
const Rowd = Variadic(rowd) as dynamic;

/// Returns a `Center`.
///
/// **supported positional arguments:**<br>
/// `double`: 0:widthFactor, 1:heightFactor
///
/// `child:Widget`
const Centerd = Variadic(centerd) as dynamic;

/// Returns a `Scaffold`.
///
/// **supported positional arguments:**<br>
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
/// `body:Widget, appBar, floatingActionButton, bottomNavigationBar, bottomSheet,
/// floatingActionButtonLocation, floatingActionButtonAnimator,
/// persistentFooterAlignment`
///
/// ***not supported:***<br>
/// `resizeToAvoidBottomInset, primary, extendBody, extendBodyBehindAppBar,
/// drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture, drawerDragStartBehavior,
/// restorationId`
const Scaffoldd = Variadic(scaffoldd) as dynamic;

/// Returns a `FloatingActionButton`.
///
/// **supported positional arguments:**<br>
/// `Color`: 0:foregroundColor, 1:backgroundColor, 2:focusColor, 3:hoverColor, 4:splashColor
///
/// `double`: 0:elevation, 1:focusElevation, 2:hoverElevation, 3:highlightElevation, 4disabledElevation
///
/// `String`: tooltip
///
/// `child:Widget, onPressed, mouseCursor, shape, clipBehavior,
/// focusNode, materialTapTargetSize, autofocus`
///
/// ***not supported:***<br>
/// `mini, isExtended, enableFeedback`
const FloatingActionButtond = Variadic(floatingactionbuttond) as dynamic;

/// Returns a `AppBar`.
///
/// **supported positional arguments:**<br>
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

/// Returns a `SafeArea`.
///
/// **supported positional arguments:**<br>
/// `bool`: 0:left, 1:top, 2:right, 3:bottom, 4:maintainBottomViewPadding
///
/// `child:Widget, minimum:EdgeInsets`
const SafeAread = Variadic(safeAread) as dynamic;

/// Returns a `Drawer`.
///
/// **supported positional arguments:**<br>
/// `doublei`: 0:width, 1:elevation
///
/// `Color`: 0: backgroundColor, 1:shadowColor, 2:surfaceTintColor
///
/// `shape:ShapeBorder, child:Widget, semanticLabel:String, clipBehavior:Clip`
const Drawerd = Variadic(drawerd) as dynamic;

/// Return a `Container`. (**Mixin with Decoration**)
///
/// **supported positional arguments:**<br>
/// `int|double`: 0:width, 1:height
///
/// `AlignmentGeometry`: 0:alignment, 1:transformAlignment
///
/// `Decoration`: 0:decoration, 1:foregroundDecoration
///
/// `EdgeInsetsGeometry`: 0:padding, 1:margin
///
/// `child:Widget, color:Color, constraints:BoxConstraints, transform:Matrix4,
/// clipBehavior:Clip`
///
/// **Mixin with Decoration:**<br>
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>?`
///
/// `color:Color, image:DecorationImage, border:BoxBorder,
///  borderRadius:BorderRadiusGeometry, boxShadow:List<BoxShadow>,
///  gradient:Gradient, backgroundBlendMode:BlendMode, shape:BoxShape`
const Containerd = Variadic(containerd) as dynamic;

/// Return a `BoxShadow`.
///
/// **supported positional arguments:**<br>
/// `int|double`: 0:blurRadius, 1:spreadRadius
///
/// `color:Color, offset:Offset, blurStyle:BlurStyle`
const BoxShadowd = Variadic(boxShadowd) as dynamic;

/// Return a `BoxDecoration`.
///
/// **supported positional arguments:**<br>
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>?`
///
/// `color:Color, image:DecorationImage, border:BoxBorder,
///  borderRadius:BorderRadiusGeometry, boxShadow:List<BoxShadow>,
///  gradient:Gradient, backgroundBlendMode:BlendMode, shape:BoxShape`
const BoxDecorationd = Variadic(boxDecorationd) as dynamic;

/// Return a `LinearGradient`.
///
/// **supported positional arguments:**<br>
/// `AlignmentGeometry`: 0:begin, 1:end
///
/// `Color`: will be added into `colors:List<Color>`
///
/// `double`: will be added into `stops:List<double>?`
///
/// `colors:List<Color>, stops:List<double>, tileMode:TileMode,
/// transform:GradientTransform`
const LinearGradientd = Variadic(linearGradientd) as dynamic;

/// Return a `BorderSide`.
///
/// **supported positional arguments:**<br>
/// `int|double`: 0:width, 1:strokeAlign
///
/// `style:BorderStyle, color:Color`
const BorderSided = Variadic(borderSided) as dynamic;

/// Return a `Border`.
///
/// **supported positional arguments:**<br>
/// - no BorderSide => Border.all
///
/// `int|double`: 0:width, 1:strokeAlign
///
/// `style:BorderStyle, color:Color`
///
/// - 1 BorderSide  => Border.fromBorderSide
/// - 2 BorderSides => Border.symmetric
/// - 4 BorderSides => Border(top, right, bottom, left)
const Borderd = Variadic(borderd) as dynamic;

/// Return a `Padding`.
///
/// **supported positional arguments:**<br>
/// `padding:EdgeInsetsGeometry, child:Widget`
const Paddingd = Variadic(paddingd) as dynamic;

/// Return a `DecorationImage`.
///
/// **supported positional arguments:**<br>
/// `double`: 0:scale, 1:opacity
///
/// `bool`: 0:matchTextDirection, 1:invertColors, 2:isAntiAlias
///
/// `image:ImageProvider<Object>, onError:void Function(Object, StackTrace?),
/// colorFilter:ColorFilter, fit:BoxFit, alignment:AlignmentGeometry,
/// centerSlice:Rect, repeat:ImageRepeat, filterQuality:FilterQuality`
const DecorationImaged = Variadic(decorationImaged) as dynamic;

/// Return a `Stack`.
///
/// **supported positional arguments:**<br>
/// `int`: 0:fontSize, 1:letterSpacing, 2:wordSpacing
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// `alignment:AlignmentGeometry, textDirection:TextDirection, fit:StackFit,
/// clipBehavior:Clip, children:List<Widget>`
const Stackd = Variadic(stackd) as dynamic;

/// Return a `Positioned`.
///
/// **supported positional arguments:**<br>
/// `double`: 0:left, 1:top, 2:right, 3:bottom, 4:width, 5:height
///
/// `child:Widget`
///
const Positionedd = Variadic(positionedd) as dynamic;

/// Return a `LimitedBox`.
///
/// **supported positional arguments:**<br>
/// `int|double`: 0:maxWidth, 1:maxHeight
///
/// `child:Widget`
const LimitedBoxd = Variadic(limitedBoxd) as dynamic;

/// Return a `ElevatedButton`.
///
/// **supported positional arguments:**<br>
/// `Widget`:
///   1. one widget as `child` => `ElevatedButton`
///   2. two widgets as `icon` and `label` => `ElevatedButton.Icon`
///
/// `void Function()`: 0:onPress, 1:onLongPress
///
/// `void Function(bool)`: 0:onHover, 1:onFocusChange
///
/// `style:ButtonStyle, focusNode:FocusNode, autofocus:bool, clipBehavior:Clip,
/// statesController:MaterialStatesController`
const ElevatedButtond = Variadic(elevatedButtond) as dynamic;
