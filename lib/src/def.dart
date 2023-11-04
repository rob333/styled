// ignore_for_file: constant_identifier_names

import 'widgets/layout/indexed_stackd.dart';
import 'widgets/layout/data_tabled.dart';
import 'widgets/layout/fractionally_sized_boxd.dart';
import 'widgets/layout/alignd.dart';
import 'widgets/layout/placeholderd.dart';
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
import 'widgets/controls/toggle_buttonsd.dart';
import 'widgets/controls/color_filteredd.dart';
import 'widgets/controls/draggable_scrollable_sheetd.dart';
import 'widgets/controls/alert_dialog_adaptived.dart';
import 'widgets/controls/alert_dialogd.dart';
import 'widgets/controls/range_sliderd.dart';
import 'widgets/controls/slider_adaptived.dart';
import 'widgets/controls/sliderd.dart';
import 'widgets/controls/single_child_scroll_viewd.dart';
import 'widgets/controls/constrained_boxd.dart';
import 'widgets/controls/semanticsd.dart';
import 'widgets/controls/rich_textd.dart';
import 'widgets/controls/aspect_ratiod.dart';
import 'widgets/controls/flexibled.dart';
import 'widgets/controls/dismissibled.dart';
import 'widgets/controls/animated_cross_faded.dart';
import 'widgets/controls/animated_opacityd.dart';
import 'widgets/controls/animated_containerd.dart';
import 'widgets/controls/animated_paddingd.dart';
import 'widgets/controls/animated_positionedd.dart';
import 'widgets/controls/animated_switcherd.dart';
import 'widgets/controls/animated_icond.dart';
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
import 'widgets/items/date_celld.dart';
import 'widgets/items/date_columnd.dart';
import 'widgets/items/date_rowd.dart';
import 'widgets/items/text_spand.dart';
import 'widgets/items/decoration_imaged.dart';
import 'widgets/items/image_blurd.dart';
import 'widgets/items/image_composed.dart';
import 'widgets/items/image_dilated.dart';
import 'widgets/items/image_eroded.dart';
import 'widgets/items/table_rowd.dart';
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

/// Return a `Dismissible`.
///
/// **supported positional arguments:**<br>
/// ***required***: `key:Key, child:Widget`
///
/// `Widget`: 0:child, 1:background, 2:secondaryBackground
///
/// `Duration`: 0:resizeDuration, 1:movementDuration
///
/// - `Future<bool?> Function(DismissDirection)`: confirmDismiss
/// - `void Function()`: onResize
/// - `void Function(DismissUpdateDetails)`: onUpdate
/// - `void Function(DismissDirection)`: onDismissed
/// - `Future<bool?> Function(DismissDirection)`: confirmDismiss
///
/// `direction:DismissDirection, crossAxisEndOffset:double|int,
/// dragStartBehavior:DragStartBehavior, behavior:HitTestBehavior,
/// Map<DismissDirection, double>:dismissThresholds`
const Dismissibled = Variadic(dismissibled) as dynamic;

/// Return a `Flexible`.
///
/// **supported positional arguments:**<br>
/// ***required***: `child:Widget`
///
/// `flex:int, fit:FlexFit`
const Flexibled = Variadic(flexibled) as dynamic;

/// Return a `AnimatedIcon`.
///
/// **supported positional arguments:**<br>
/// ***required***: `icon:AnimatedIconData, progress:Animation<double>`
///
/// `color:Color, size:double, semanticLabel:String, textDirection:TextDirection`
const AnimatedIcond = Variadic(animatedIcond) as dynamic;

/// Return a `AspectRatio`.
///
/// **supported positional arguments:**<br>
/// ***required***: `aspectRatio:double`
///
/// `child:Widget`
const AspectRatiod = Variadic(aspectRatiod) as dynamic;

/// Return a `Placeholder`.
///
/// **supported positional arguments:**<br>
/// `double|int`: 0:fallbackWidth, 1:fallbackHeight, 2:strokeWidth
///
/// `child:Widget, color:Color`
const Placeholderd = Variadic(placeholderd) as dynamic;

/// Return a `RichText`.
///
/// **supported positional arguments:**<br>
/// `int`: 0:fontSize, 1:letterSpacing, 2:wordSpacing
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// `text:InlineSpan, textAlign:TextAlign, textDirection:TextDirection,
/// softWrap:bool, overflow:TextOverflow, textScaleFactor:double, maxLines:int,
/// locale:Locale, strutStyle:StrutStyle, textWidthBasis:TextWidthBasis,
/// textHeightBehavior:TextHeightBehavior,
/// selectionRegistrar:SelectionRegistrar, selectionColor:Color`
const RichTextd = Variadic(richTextd) as dynamic;

/// Return a `TextSpan`.
///
/// **supported positional arguments:**<br>
/// `string`: 0:text, 1:semanticsLabel
///
/// `InlineSpan(TextSpan)`: will be added into `children:List<InlineSpan>`
///
/// - `void Function(PointerEnterEvent)`: onEnter
/// - `void Function(PointerExitEvent)` : onExit
///
/// `children:List<InlineSpan>, style:TextStyle, recognizer:GestureRecognizer,
/// mouseCursor:MouseCursor, locale:Locale, spellOut:bool`
const TextSpand = Variadic(textSpand) as dynamic;

/// Return a `AnimatedSwitcher`.
///
/// **supported positional arguments:**<br>
/// ***required***: `duration:Duration`
///
/// `Duration`: 0:duration, 1:reverseDuration
///
/// `Curve`: 0:switchInCurve, 1:switchOutCurve
///
/// - `Widget Function(Widget, Animation<double>)`: transitionBuilder
/// - `Widget Function(Widget?, List<Widget>)`: layoutBuilder
///
/// `child:Widget`
const AnimatedSwitcherd = Variadic(animatedSwitcherd) as dynamic;

/// Return a `AnimatedPositioned`.
///
/// **supported positional arguments:**<br>
/// ***required***: `child:Widget, durtaion:Duration`
///
/// `double|int`: 0:left, 1:top, 2:right, 3:bottom, 4:width, 5:height
///
/// - `void Function()`: onEnd
///
/// `curve:Curve`
const AnimatedPositionedd = Variadic(animatedPositionedd) as dynamic;

/// Return a `AnimatedPadding`.
///
/// **supported positional arguments:**<br>
/// ***required***: `padding:EdgeInsetsGeometry, durtaion:Duration`
///
/// - `void Function()`: onEnd
///
/// `child:Widget, curve:Curve`
const AnimatedPaddingd = Variadic(animatedPaddingd) as dynamic;

/// Return a `AnimatedContainer`.
///
/// **supported positional arguments:**<br>
/// ***required***: `durtaion:Duration`
///
/// `AlignmentGeometry`: 0:alignment, 1:transformAlignment
///
/// `EdgeInsetsGeometry`: 0:padding, 1:margin
///
/// `Decoration`: 0:decoration, 1:foregroundDecoration
///
/// `double|int`: 0:width, 1:height
///
/// - `void Function()`: onEnd
///
/// `color:Color, constraints:BoxConstraints, transform:Matrix4, child:Widget,
/// clipBehavior:Clip, curve:Curve`
const AnimatedContainerd = Variadic(animatedContainerd) as dynamic;

/// Return a `IndexedStack`.
///
/// **supported positional arguments:**<br>
/// `Widget`: will be added into `children:List<Widget>`
///
/// `children:List<Widget>, alignment:AlignmentGeometry,
/// textDirection:TextDirection, clipBehavior:Clip, sizing:StackFit, index:int`
const IndexedStackd = Variadic(indexedStackd) as dynamic;

/// Return a `Semantics`.
///
/// **supported positional arguments:**<br>
/// `int`: 0:maxValueLength, 1:currentValueLength
///
/// `bool`: 0:enabled, 1:checked
///
/// `String`: 0:label, 1:value, 2:tooltip, 3:hint
///
/// - `void Function()`: 0:onTap, 1:onLongPress
///
/// `child:Widget, sortKey:SemanticsSortKey, tagForChildren:SemanticsTag,
/// textDirection:TextDirection`
///
/// ***not supported:***<br>
/// - `void Function(bool)`: onMoveCursorBackwardByCharacter, onMoveCursorForwardByCharacter
/// - `void Function(TextSelection)`: onSetSelection
/// - `void Function(String)`: onSetText
/// - `Map<CustomSemanticsAction, void Function()>`: customSemanticsActions
/// - `void Function()`: onScrollLeft, onScrollRight, onScrollUp, onScrollDown,
/// onIncrease, onDecrease, onCopy, onCut, onPaste, onDismiss,
/// onDidGainAccessibilityFocus
///
/// `onDidLoseAccessibilityFocus:bool, explicitChildNodes:bool,
/// excludeSemantics:bool, blockUserActions:bool, mixed:bool, selected:bool,
/// toggled:bool, button:bool, slider:bool, keyboardKey:bool, link:bool,
/// header:bool, textField:bool, readOnly:bool, focusable:bool, focused:bool,
/// inMutuallyExclusiveGroup:bool, obscured:bool, multiline:bool,
/// scopesRoute:bool, namesRoute:bool, hidden:bool, image:bool, liveRegion:bool,
/// increasedValue:String,
/// decreasedValue:String,
/// onTapHint:String,
/// onLongPressHint:String,
/// attributedLabel:AttributedString,
/// attributedValue:AttributedString,
/// attributedIncreasedValue:AttributedString,
/// attributedDecreasedValue:AttributedString,
/// attributedHint:AttributedString`
const Semanticsd = Variadic(semanticsd) as dynamic;

/// Return a `ConstrainedBox`.
///
/// **supported positional arguments:**<br>
/// `child:Widget, constraints:BoxConstraints`
const ConstrainedBoxd = Variadic(constrainedBoxd) as dynamic;

/// Return a `AnimatedOpacity`.
///
/// **supported positional arguments:**<br>
/// - `void Function()`: onEnd
///
/// `child:Widget, opacity:double, curve:Curve, duration:Duration,
/// alwaysIncludeSemantics:bool`
const AnimatedOpacityd = Variadic(animatedOpacityd) as dynamic;

/// Return a `FractionallySizedBox`.
///
/// **supported positional arguments:**<br>
/// `double`: 0:widthFactor, 1:heightFactor
///
/// `child:Widget, alignment:AlignmentGeometry`
const FractionallySizedBoxd = Variadic(fractionallySizedBoxd) as dynamic;

/// Return a `SingleChildScrollView`.
///
/// **supported positional arguments:**<br>
/// `bool`: 0:reverse, 1:primary
///
/// `child:Widget, scrollDirection:Axis, padding:EdgeInsetsGeometry,
/// physics:ScrollPhysics, controller:ScrollController,
/// dragStartBehavior:DragStartBehavior, clipBehavior:Clip,restorationId:String,
/// keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior`
const SingleChildScrollViewd = Variadic(singleChildScrollViewd) as dynamic;

/// Return a `DataRow`.
///
/// **supported positional arguments:**<br>
/// `DataCell`: will be added into `cells:List<DataCell>`
///
/// - `void Function(bool?)`: onSelectChanged
/// - `void Function()`: onLongPress
///
/// `cells:List<DataCell>, bool:selected,
/// color:MaterialStateProperty<Color?>,
/// mouseCursor:MaterialStateProperty<MouseCursor?>`
const DataRowd = Variadic(dataRowd) as dynamic;

/// Return a `DataColumn`.
///
/// **supported positional arguments:**<br>
/// - `void Function(int, bool)`: onSort
///
/// `label:Widget, tooltip:String, numeric:bool,
/// mouseCursor:MaterialStateProperty<MouseCursor?>`
const DataColumnd = Variadic(dataColumnd) as dynamic;

/// Return a `DataCell`.
///
/// **supported positional arguments:**<br>
/// `bool`: 0:placeholder, 1:showEditIcon
///
/// - `void Function(TapDownDetails)`: onTapDown
/// - `void Function()`: 0:onTap, 1:onLongPress, 2:onDoubleTap, 3:onTapCancel
///
/// `child:Widget`
const DataCelld = Variadic(dataCelld) as dynamic;

/// Return a `DataTable`. (**Mixin with Decoration**)
///
/// **supported positional arguments:**<br>
/// ***required***: `columns:List<DataColumn>, rows:List<DataRow>`
///
/// `DataColumn`: will be added into `columns:List<DataColumn>`
///
/// `DataRow`: will be added into `rows:List<DataRow>`
///
/// - `void Function(bool?)`: onSelectAll
///
/// `sortAscending:bool, decoration:Decoration, border:TableBorder,
/// clipBehavior:Clip, sortColumnIndex:int`
///
/// **Mixin with Decoration:**<br>
/// `BoxShadow`: will be added into `boxShadow:List<BoxShadow>`
///
/// `color:Color, image:DecorationImage, border:BoxBorder,
///  borderRadius:BorderRadiusGeometry, boxShadow:List<BoxShadow>,
///  gradient:Gradient, backgroundBlendMode:BlendMode, shape:BoxShape`
///
/// ***not supported:***<br>
/// `dataRowColor:MaterialStateProperty<Color?>,
/// headingRowColor:MaterialStateProperty<Color?>,
/// dataRowHeight:double, dataRowMinHeight:double, dataRowMaxHeight:double,
/// dataTextStyle:TextSTyle, headingTextStyle:TextStyle,
/// headingRowHeight:double, horizontalMargin:double, columnSpacing:double,
/// showCheckboxColumn:bool, showBottomBorder:bool,
/// dividerThickness:double, checkboxHorizontalMargin:double`
const DataTabled = Variadic(dataTabled) as dynamic;

/// Return a `Slider`.
///
/// **supported positional arguments:**<br>
/// ***required***: `value:double, onChanged:void Function(double)`
///
/// `double`: 0:value, 1:min, 2:max, 3:secondaryTrackValue
///
/// `void Function(double)`: 0:onChanged, 1:onChangeStart, 2:onChangeEnd
///
/// `Color`: 0:activeColor, 1:inactiveColor, 2:secondaryActiveColor, 3:thumbColor
///
/// - `String Function(double)`: semanticFormatterCallback
///
/// `divisions:int, label:String, mouseCursor:MouseCursor, focusNode:FocusNode,
/// autofocus:bool, allowedInteraction:SliderInteraction,
/// overlayColor:MaterialStateProperty<Color?>`
const Sliderd = Variadic(sliderd) as dynamic;

/// Return a `Slider.adaptive`.
///
/// **supported positional arguments:**<br>
/// ***required***: `value:double, onChanged:void Function(double)`
///
/// `double`: 0:value, 1:min, 2:max, 3:secondaryTrackValue
///
/// `void Function(double)`: 0:onChanged, 1:onChangeStart, 2:onChangeEnd
///
/// `Color`: 0:activeColor, 1:inactiveColor, 2:secondaryActiveColor, 3:thumbColor
///
/// - `String Function(double)`: semanticFormatterCallback
///
/// `divisions:int, label:String, mouseCursor:MouseCursor, focusNode:FocusNode,
/// autofocus:bool, allowedInteraction:SliderInteraction,
/// overlayColor:MaterialStateProperty<Color?>`
const SliderAdaptived = Variadic(sliderAdaptived) as dynamic;

/// Return a `RangeSlider`.
///
/// **supported positional arguments:**<br>
/// ***required***: `value:RangeValues, onChanged:void Function(RangeValues)`
///
/// `double`: 0:min, 1:max
///
/// `void Function(RangeValues)`: 0:onChanged, 1:onChangeStart, 2:onChangeEnd
///
/// `Color`: 0:activeColor, 1:inactiveColor
///
/// `divisions:int, labels:RangeLabels,
/// overlayColor:MaterialStateProperty<Color?>,
/// mouseCursor:MaterialStateProperty<MouseCursor?>`
const RangeSliderd = Variadic(rangeSliderd) as dynamic;

/// Return a `AlertDialog`.
///
/// **supported positional arguments:**<br>
/// `Widget`: 0:icon, 1:title, 2:content
///
/// `Color`: 0:iconColor, 1:backgroundColor, 2:shadowColor, 3:surfaceTintColor
///
/// `EdgeInsetsGeometry`: 0:iconPadding, 1:titlePadding, 2:contentPadding,
/// 3:actionsPadding, 4:buttonPadding
///
/// `TextStyle`: 0:titleTextStyle, 1:contentTextStyle
///
/// `double`: 0:elevation, 1:actionsOverflowButtonSpacing
///
/// `insetPadding:EdgeInsets, actions:List<Widget>,
/// actionsAlignment:MainAxisAlignment,
/// actionsOverflowAlignment:OverflowBarAlignment,
/// actionsOverflowDirection:VerticalDirection, semanticLabel:String,
/// clipBehavior:Clip, shape:ShapeBorder, alignment:AlignmentGeometry,
/// scrollable:bool`
const AlertDialogd = Variadic(alertDialogd) as dynamic;

/// Return a `AlertDialog.adaptive`.
///
/// **supported positional arguments:**<br>
/// `Widget`: 0:icon, 1:title, 2:content
///
/// `Color`: 0:iconColor, 1:backgroundColor, 2:shadowColor, 3:surfaceTintColor
///
/// `EdgeInsetsGeometry`: 0:iconPadding, 1:titlePadding, 2:contentPadding,
/// 3:actionsPadding, 4:buttonPadding
///
/// `TextStyle`: 0:titleTextStyle, 1:contentTextStyle
///
/// `double`: 0:elevation, 1:actionsOverflowButtonSpacing
///
/// `ScrollController`: 0:scrollController, 1:actionScrollController
///
/// `insetPadding:EdgeInsets, actions:List<Widget>,
/// actionsAlignment:MainAxisAlignment,
/// actionsOverflowAlignment:OverflowBarAlignment,
/// actionsOverflowDirection:VerticalDirection, semanticLabel:String,
/// clipBehavior:Clip, shape:ShapeBorder, alignment:AlignmentGeometry,
/// scrollable:bool, insetAnimationDuration:Duration, insetAnimationCurve:Curve`
const AlertDialogAdaptived = Variadic(alertDialogAdaptived) as dynamic;

/// Return a `AnimatedCrossFade`.
///
/// **supported positional arguments:**<br>
/// ***required***: `firstChild:Widget, secondChild:Widget, crossFadeState:CrossFadeState, duration:Duration`
///
/// `Widget`: 0:firstChild, 1:secondChild
///
/// `Curve`: 0:firstCurve, 1:secondCurve, 2:sizeCurve
///
/// `Duration`: 0:duration, 1:reverseDuration
///
/// - `Widget Function(Widget, Key, Widget, Key)`: layoutBuilder
///
/// `alignment:AlignmentGeometry, crossFadeState:CrossFadeState,
/// excludeBottomFocus:bool`
const AnimatedCrossFaded = Variadic(animatedCrossFaded) as dynamic;

/// Return a `DraggableScrollableSheet`.
///
/// **supported positional arguments:**<br>
/// ***required***: `builder:Widget Function(BuildContext, ScrollController) `
/// `double`: 0:initialChildSize, 1:minChildSize, 2:maxChildSize
///
/// `bool`: 0:expand, 1:snap, 2:shouldCloseOnMinExtent
///
/// - `Widget Function(BuildContext, ScrollController)`: builder
///
/// `snapSizes:List<double>, snapAnimationDuration:Duration,
/// controller:DraggableScrollableController`
const DraggableScrollableSheetd = Variadic(draggableScrollableSheetd) as dynamic;

/// Return a `ColorFiltered`.
///
/// **supported positional arguments:**<br>
/// ***required***: `colorFilter:ColorFilter`
///
/// `child:Widget`
const ColorFilteredd = Variadic(colorFilteredd) as dynamic;

/// Return a `ToggleButtons`.
///
/// **supported positional arguments:**<br>
/// ***required***: `children:List<Widget>, isSelected:List<bool>`
///
/// `Color`: 0:color, 1:selectedColor, 2:disabledColor, 3:fillColor,
/// 4:focusColor, 5:highlightColor, 6:hoverColor, 7:splashColor, 8:borderColor,
/// 9:selectedBorderColor, 10:disabledBorderColor
///
/// - `void Function(int)`: onPressed
///
/// `Widget`: will be added into `children:List<Widget>`
///
/// `FocusNode`: will be added into `focusNodes:List<FocusNode>`
///
/// `renderBorder:bool, mouseCursor:MouseCursor,
/// tapTargetSize:MaterialTapTargetSize, textStyle:TextStyle,
/// constraints:BoxConstraints, borderRadius:BorderRadius, borderWidth:double,
/// direction:Axis, verticalDirection:VerticalDirection`
const ToggleButtonsd = Variadic(toggleButtonsd) as dynamic;
