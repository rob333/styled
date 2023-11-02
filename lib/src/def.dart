// ignore_for_file: constant_identifier_names

import 'widgets/layout/alignd.dart';
import 'widgets/layout/fitted_boxd.dart';
import 'widgets/layout/expandedd.dart';
import 'widgets/layout/herod.dart';
import 'widgets/layout/clip_rectd.dart';
import 'widgets/layout/clip_ovald.dart';
import 'widgets/layout/clip_pathd.dart';
import 'widgets/layout/clip_rrectd.dart';
import 'widgets/layout/tabled.dart';
import 'widgets/layout/sliver_appbard.dart';
import 'widgets/layout/wrapd.dart';
import 'widgets/layout/opacityd.dart';
import 'widgets/layout/grid_tiled.dart';
import 'widgets/layout/grid_viewd.dart';
import 'widgets/layout/list_tiled.dart';
import 'widgets/layout/list_viewd.dart';
import 'widgets/layout/spacerd.dart';
import 'widgets/layout/sized_boxd.dart';
import 'widgets/layout/paddingd.dart';
import 'widgets/layout/limited_boxd.dart';
import 'widgets/layout/positionedd.dart';
import 'widgets/layout/stackd.dart';
import 'widgets/layout/containerd.dart';
import 'widgets/layout/columnd.dart';
import 'widgets/layout/rowd.dart';
import 'widgets/layout/centerd.dart';
import 'widgets/layout/safeared.dart';
import 'widgets/controls/animated_listd.dart';
import 'widgets/controls/animated_builderd.dart';
import 'widgets/controls/backdrop_filterd.dart';
import 'widgets/controls/flipd.dart';
import 'widgets/controls/translated.dart';
import 'widgets/controls/scaled.dart';
import 'widgets/controls/rotated.dart';
import 'widgets/controls/transformd.dart';
import 'widgets/controls/absorb_pointerd.dart';
import 'widgets/controls/icon_buttond.dart';
import 'widgets/controls/tooltipd.dart';
import 'widgets/controls/cutom_paintd.dart';
import 'widgets/controls/page_viewd.dart';
import 'widgets/controls/elevated_buttond.dart';
import 'widgets/items/decoration_imaged.dart';
import 'widgets/items/image_blurd.dart';
import 'widgets/items/image_composed.dart';
import 'widgets/items/image_dilated.dart';
import 'widgets/items/image_eroded.dart';
import 'widgets/items/tablerowd.dart';
import 'widgets/items/borderd.dart';
import 'widgets/items/border_sided.dart';
import 'widgets/items/linear_gradientd.dart';
import 'widgets/items/box_decorationd.dart';
import 'widgets/items/box_shadowd.dart';
import 'widgets/items/appbard.dart';
import 'widgets/items/floating_action_buttond.dart';
import 'widgets/items/drawerd.dart';
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
/// `double|int`: 0:width, 1:height
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
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>`
///
/// `color:Color, image:DecorationImage, border:BoxBorder,
///  borderRadius:BorderRadiusGeometry, boxShadow:List<BoxShadow>,
///  gradient:Gradient, backgroundBlendMode:BlendMode, shape:BoxShape`
const Containerd = Variadic(containerd) as dynamic;

/// Return a `BoxShadow`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:blurRadius, 1:spreadRadius
///
/// `color:Color, offset:Offset, blurStyle:BlurStyle`
const BoxShadowd = Variadic(boxShadowd) as dynamic;

/// Return a `BoxDecoration`.
///
/// **supported positional arguments:**<br>
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>`
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
/// `double`: will be added into `stops:List<double>`
///
/// `colors:List<Color>, stops:List<double>, tileMode:TileMode,
/// transform:GradientTransform`
const LinearGradientd = Variadic(linearGradientd) as dynamic;

/// Return a `BorderSide`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:width, 1:strokeAlign
///
/// `style:BorderStyle, color:Color`
const BorderSided = Variadic(borderSided) as dynamic;

/// Return a `Border`.
///
/// **supported positional arguments:**<br>
/// - no BorderSide => Border.all
///
/// `double|int`: 0:width, 1:strokeAlign
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

/// Return a `ElevatedButton`.
///
/// **supported positional arguments:**<br>
/// ***required***: `void Function()?`: 0:onPress, (1:onLongPress)
///
/// ***required***: `Widget`:
///   1. one widget invokes `ElevatedButton` as `child`
///   2. two widgets invoke `ElevatedButton.Icon` as `icon` and `label`
///
/// `void Function(bool)`: 0:onHover, 1:onFocusChange
///
/// `style:ButtonStyle, focusNode:FocusNode, autofocus:bool, clipBehavior:Clip,
/// statesController:MaterialStatesController`
const ElevatedButtond = Variadic(elevatedButtond) as dynamic;

/// Return a `SizedBox`.
///
/// **supported positional arguments:**<br>
/// `double`: 0:width, 1:height
///
/// `child:Widget`
const SizedBoxd = Variadic(sizedBoxd) as dynamic;

/// Return a `LimitedBox`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:maxWidth, 1:maxHeight
///
/// `child:Widget`
const LimitedBoxd = Variadic(limitedBoxd) as dynamic;

/// Return a `Spacer`.
///
/// **supported positional arguments:**<br>
/// `int:flex`
const Spacerd = Variadic(spacerd) as dynamic;

/// Return a `ListView`.
///
/// **supported positional arguments:**<br>
/// `Widget`: will be added into `children:List<Widget>`
///
/// `key:Key, scrollDirection:Axis, controller:ScrollController,
/// physics:ScrollPhysics, padding:EdgeInsetsGeometry, children:List<Widget>,
/// semanticChildCount:int,
/// keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior,
/// restorationId:String, clipBehavior:Clip, dragStartBehavior:DragStartBehavior`
///
/// ***not supported:***<br>
/// `prototypeItem:Widget, reverse:bool, primary:bool, shrinkWrap:bool,
/// addAutomaticKeepAlives:bool, addRepaintBoundaries:bool,
/// addSemanticIndexes:bool, itemExtent:double, cacheExtent:double`
const ListViewd = Variadic(listViewd) as dynamic;

/// Return a `ListTile`.
///
/// **supported positional arguments:**<br>
/// `Widget`: 0:title, 1:leading, 2:subtitle, 3:trailing
///
/// `void Function()`: 0:onTap, 1:onLongPress
///
/// `onFocusChange:void Function(bool)`
/// `visualDensity:VisualDensity, shape:ShapeBorder, style:ListTileStyle,
/// contentPadding:EdgeInsetsGeometry, mouseCursor:MouseCursor,
/// focusNode:FocusNode, titleAlignment:ListTileTitleAlignment`
///
/// ***not supported:***<br>
/// `selectedColor:Color, iconColor:Color, textColor:Color,
/// titleTextStyle:TextStyle, subtitleTextStyle:TextStyle,
/// leadingAndTrailingTextStyle:TextStyle, focusColor:Color,
/// hoverColor:Color, splashColor:Color, tileColor:Color,
/// selectedTileColor:Color, isThreeLine:bool, dense:bool, enabled:bool,
/// selected:bool, autofocus:bool, enableFeedback:bool,
/// horizontalTitleGap:double, minVerticalPadding:double,
/// minLeadingWidth:double`
const ListTiled = Variadic(listTiled) as dynamic;

/// Return a `GridView`.
///
/// **supported positional arguments:**<br>
/// ***required***: `gridDelegate:SliverGridDelegate`
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// `scrollDirection:Axis, controller:ScrollController, physics:ScrollPhysics,
/// padding:EdgeInsetsGeometry, cacheExtent:double, children:List<Widget>,
/// semanticChildCount:int, dragStartBehavior:DragStartBehavior,
/// clipBehavior:Clip, keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior,
/// restorationId:String`
///
/// ***not supported:***<br>
/// `reverse:bool, primary:bool, shrinkWrap:bool, addAutomaticKeepAlives:bool,
/// addRepaintBoundaries:bool, addSemanticIndexes:bool`
const GridViewd = Variadic(gridViewd) as dynamic;

/// Return a `GridTile`.
///
/// **supported positional arguments:**<br>
/// ***required***: `child:Widget`
///
/// `Widget`: 0:child, 1:header, 2:footer
const GridTiled = Variadic(gridTiled) as dynamic;

/// Return a `Expanded`.
///
/// **supported positional arguments:**<br>
/// ***required***: `child:Widget`
///
/// `int:flex`
const Expandedd = Variadic(expandedd) as dynamic;

/// Return a `Wrap`.
///
/// **supported positional arguments:**<br>
/// ***required***: `children:Widget|List<Widget>`
///
/// `double|int`: 0:spacing, 1:runSpacing
///
/// `WrapAlignment`: 0:alignment, 1:runAlignment
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// `direction:Axis, crossAxisAlignment:WrapCrossAlignment,
/// textDirection:TextDirection, verticalDirection:VerticalDirection,
/// clipBehavior:Clip`
const Wrapd = Variadic(wrapd) as dynamic;

/// Return a `Opacity`.
/// ***required***: `opacity:double`
///
/// **supported positional arguments:**<br>
/// `child:Widget, alwaysIncludeSemantics:bool`
const Opacityd = Variadic(opacityd) as dynamic;

/// Return a `PageView`.
///
/// **supported positional arguments:**<br>
/// `int`: 0:fontSize, 1:letterSpacing, 2:wordSpacing
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// `onPageChanged:void Function(int), `
/// `scrollDirection:Axis, controller:PageController, physics:ScrollPhysics,
/// dragStartBehavior:DragStartBehavior, restorationId:String,
/// clipBehavior:Clip, scrollBehavior:ScrollBehavior, reverse:bool`
///
/// ***not supported:***<br>
/// `pageSnapping:bool, allowImplicitScrolling:bool, padEnds:bool`
const PageViewd = Variadic(pageViewd) as dynamic;

/// Return a `Table`.
///
/// **supported positional arguments:**<br>
/// `int`: 0:fontSize, 1:letterSpacing, 2:wordSpacing
///
/// `TableRow`: will be added into `children:List<TableRow>`
///
/// `columnWidths:Map<int, TableColumnWidth>,
/// defaultColumnWidth:TableColumnWidth, textDirection:TextDirection,
/// border:TableBorder, defaultVerticalAlignment:TableCellVerticalAlignment,
/// textBaseline:TextBaseline`
const Tabled = Variadic(tabled) as dynamic;

/// Return a `TableRow`. (**Mixin with Decoration**)
///
/// **supported positional arguments:**<br>
/// `Widget`: will be added into `children:List<Widget>`
///
/// `decoration:Decoration`
///
/// **Mixin with Decoration:**<br>
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>`
///
/// `color:Color, image:DecorationImage, border:BoxBorder,
///  borderRadius:BorderRadiusGeometry, boxShadow:List<BoxShadow>,
///  gradient:Gradient, backgroundBlendMode:BlendMode, shape:BoxShape`
const TableRowd = Variadic(tableRowd) as dynamic;

/// Return a `SliverAppBar`.
///
/// **supported positional arguments:**<br>
/// `Widget`: 0:title, 1:leading, 2:flexibleSpace
///
/// `PreferredSizeWidget`: bottom
///
/// `List<Widget>`: actions
///
/// `Color`: 0:backgroundColor, 1:foregroundColor, 2:shadowColor, 3:surfaceTintColor
///
/// `IconThemeData`: 0:iconTheme, 1:actionsIconTheme
///
/// `TextStyle`: 0:titleTextStyle, 1:toolbarTextStyle
///
/// `Future<void> Function()`: onStretchTrigger
///
/// `shape:ShapeBorder, systemOverlayStyle:SystemUiOverlayStyle, clipBehavior:Clip`
///
/// ***not supported:***<br>
/// `elevation:double, scrolledUnderElevation:double, titleSpacing:double,
/// collapsedHeight:double, expandedHeight:double, stretchTriggerOffset:double,
/// toolbarHeight:double, leadingWidth:double, automaticallyImplyLeading:bool,
/// forceElevated:bool, primary:bool, centerTitle:bool,
/// excludeHeaderSemantics:bool, floating:bool, pinned:bool, snap:bool,
/// stretch:bool, forceMaterialTransparency:bool`
const SliverAppBard = Variadic(sliverAppBard) as dynamic;

/// Return a `ClipRRect`.
///
/// **supported positional arguments:**<br>
/// `child:Widget, clipBehavior:Clip, borderRadius:BorderRadiusGeometry,
/// clipper:CustomClipper<RRect>`
const ClipRRectd = Variadic(clipRRectd) as dynamic;

/// Return a `ClipOval`.
///
/// **supported positional arguments:**<br>
/// `child:Widget, clipBehavior:Clip, clipper:CustomClipper<RRect>`
const ClipOvald = Variadic(clipOvald) as dynamic;

/// Return a `ClipPath`.
///
/// **supported positional arguments:**<br>
/// `child:Widget, clipBehavior:Clip, clipper:CustomClipper<RRect>`
const ClipPathd = Variadic(clipPathd) as dynamic;

/// Return a `ClipRect`.
///
/// **supported positional arguments:**<br>
/// `child:Widget, clipBehavior:Clip, clipper:CustomClipper<RRect>`
const ClipRectd = Variadic(clipRectd) as dynamic;

/// Return a `Hero`.
///
/// **supported positional arguments:**<br>
/// ***required***: `child:Widget, tag:Object`
///
/// `create: Tween<Rect?> Function(Rect?, Rect?)`
///
/// `flightShuttleBuilder: Widget Function(BuildContext, Animation<double>, HeroFlightDirection,BuildContext, BuildContext)`
///
/// `placeholderBuilder: Widget Function(BuildContext, Size, Widget)`
///
/// `transitionOnUserGestures: bool`
const Herod = Variadic(herod) as dynamic;

/// Return a `CustomPaint`.
///
/// **supported positional arguments:**<br>
/// `CustomPainter`: 0:painter, 1:foregroundPainter
///
/// `bool`: 0:isComplex, 1:willChange
///
/// `child:Widget`
const CustomPaintd = Variadic(customPaintd) as dynamic;

/// Return a `Tooltip`.  (**Mixin with Decoration**)
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:height, 1:verticalOffset
///
/// `EdgeInsetsGeometry`: 0:padding, 1:margin
///
/// `Duration`: 0:waitDuration, 1:showDuration
///
/// `bool`: 0:preferBelow, 1:excludeFromSemantics, 2:enableFeedback
///
/// `void Function()`: onTriggered
///
/// `child:Widget, message:String, richMessage:InlineSpan, decoration:Decoration,
/// textStyle:TextStyle, textAlign:TextAlign, triggerMode:TooltipTriggerMode`
///
/// **Mixin with Decoration:**<br>
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>`
///
/// `color:Color, image:DecorationImage, border:BoxBorder,
///  borderRadius:BorderRadiusGeometry, boxShadow:List<BoxShadow>,
///  gradient:Gradient, backgroundBlendMode:BlendMode, shape:BoxShape`
const ToolTipd = Variadic(tooltipd) as dynamic;

/// Return a `IconButton`.
///
/// **supported positional arguments:**<br>
/// ***required***: `icon:Widget, onPressed:void Function()?`
///
/// `Widget`: 0:icon, 1:selectedIcon
///
/// `double|int`: 0:iconSize, 1:splashRadius
///
/// `Color`: 0:color, 1:focusColor, 2:hoverColor, 3:highlightColor, 4:splashColor, 5:disabledColor
///
/// `bool`: 0:isSelected, 1:autofocus, 2:enableFeedback
///
/// `visualDensity:VisualDensity, padding:EdgeInsetsGeometry,
/// alignment:AlignmentGeometry, mouseCursor:MouseCursor, focusNode:FocusNode,
/// tooltip:String, constraints:BoxConstraints, style:ButtonStyle`
const IconButtond = Variadic(iconButtond) as dynamic;

/// Return a `FittedBox`.
///
/// **supported positional arguments:**<br>
/// `fit:BoxFit, child:Widget, alignment:AlignmentGeometry, clipBehavior:Clip`
const FittedBoxd = Variadic(fittedBoxd) as dynamic;

/// Return a `AbsorbPointer`.
///
/// **supported positional arguments:**<br>
/// `bool`: 0:absorbing, 1:ignoringSemantics
///
/// `child:Widget`
const AbsorbPointerd = Variadic(absorbPointerd) as dynamic;

/// Return a `Transform`.
///
/// **supported positional arguments:**<br>
/// ***required***: `transform:Matrix4`
///
/// `origin:Offset, alignment:AlignmentGeometry,transformHitTests:bool,
/// filterQuality:FilterQuality, child:Widget`
const Transformd = Variadic(transformd) as dynamic;

/// Return a `Transform.rotate`.
///
/// **supported positional arguments:**<br>
/// ***required***: `angle:double`
///
/// `origin:Offset, alignment:AlignmentGeometry,transformHitTests:bool,
/// filterQuality:FilterQuality, child:Widget`
const Rotated = Variadic(rotated) as dynamic;

/// Return a `Transform.scale`.
///
/// **supported positional arguments:**<br>
/// ***required: `double`***
/// - one double: scale
/// - two doubles: scaleX, scaleY
///
/// `origin:Offset, alignment:AlignmentGeometry,transformHitTests:bool,
/// filterQuality:FilterQuality, child:Widget`
const Scaled = Variadic(scaled) as dynamic;

/// Return a `Transform.translate`.
///
/// **supported positional arguments:**<br>
/// ***required: `offset:Offset`***
///
/// `transformHitTests:bool, filterQuality:FilterQuality, child:Widget`
const Translated = Variadic(translated) as dynamic;

/// Return a `Transform.flip`.
///
/// **supported positional arguments:**<br>
/// `bool`: 0:flipX, 1:flipY, 2:transformHitTests
///
/// `origin:Offset, filterQuality:FilterQuality, child:Widget`
const Flipd = Variadic(flipd) as dynamic;

/// Return a `BackdropFilter`.
///
/// **supported positional arguments:**<br>
/// ***required***: `filter:ImageFilter`
///
/// `child:Widget, blendMode:BlendMode`
const BackdropFilterd = Variadic(backdropFilterd) as dynamic;

/// Return a `ImageFilter.blur`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:sigmaX, 1:sigmaY
///
/// `tileMode:TileMode`
const ImageBlurd = Variadic(imageBlurd) as dynamic;

/// Return a `ImageFilter.dilate`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:radiusX, 1:radiusY
const ImageDilated = Variadic(imageDilated) as dynamic;

/// Return a `ImageFilter.erode`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:radiusX, 1:radiusY
const ImageEroded = Variadic(imageEroded) as dynamic;

/// Return a `ImageFilter.compose`.
///
/// **supported positional arguments:**<br>
/// ***required***: `outer:ImageFilter, inner:ImageFilter`
///
/// `ImageFilter`: 0:outer, 1:inner
const ImageComposed = Variadic(imageComposed) as dynamic;

/// Return a `Align`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:widthFactor, 1:heightFactor
///
/// `alignment:AlignmentGeometry, child:Widget`
const Alignd = Variadic(alignd) as dynamic;

/// Return a `AnimatedBuilder`.
///
/// **supported positional arguments:**<br>
/// ***required***:
/// - `animation:Listenable`
/// - `builder:Widget Function(BuildContext, Widget?)`
///
/// `child:Widget`

const AnimatedBuilderd = Variadic(animatedBuilderd) as dynamic;

/// Return a `AnimatedList`.
///
/// **supported positional arguments:**<br>
/// ***required***:
/// - `itemBuilder:Widget Function(BuildContext, int, Animation<double>)`
/// - `initialItemCount:int`
///
/// `bool`: 0:reverse, 1:primary, 2:shrinkWrap
///
/// `scrollDirection:Axis, controller:ScrollController, physics:ScrollPhysics,
/// padding:EdgeInsetsGeometry, clipBehavior:Clip`
const AnimatedListd = Variadic(animatedListd) as dynamic;
