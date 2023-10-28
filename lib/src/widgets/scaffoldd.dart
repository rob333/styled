import 'package:flutter/material.dart';

scaffoldd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int drawi = 0;
  int fni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case PreferredSizeWidget arg:
        argsMap[#appBar] = arg;
      case FloatingActionButton arg:
        argsMap[#floatingActionButton] = arg;
      case BottomNavigationBar arg:
        argsMap[#bottomNavigationBar] = arg;
      case BottomSheet arg:
        argsMap[#bottomSheet] = arg;
      case double arg:
        argsMap[#drawerEdgeDragWidth] = arg;
      case Drawer arg:
        switch (drawi++) {
          case 0:
            argsMap[#drawer] = arg;
          case 1:
            argsMap[#endDrawer] = arg;
        }
      case void Function(bool) arg:
        switch (fni++) {
          case 0:
            argsMap[#onDrawerChanged] = arg;
          case 1:
            argsMap[#onEndDrawerChanged] = arg;
        }

      case Widget arg:
        argsMap[#body] = arg;
      case MaterialColor arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#drawerScrimColor] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#drawerScrimColor] = arg;
        }
      case FloatingActionButtonLocation arg:
        argsMap[#floatingActionButtonLocation] = arg;
      case FloatingActionButtonAnimator arg:
        argsMap[#floatingActionButtonAnimator] = arg;
      case List<Widget> arg:
        argsMap[#persistentFooterButtons] = arg;
      case AlignmentDirectional arg:
        argsMap[#persistentFooterAlignment] = arg;
      // case bool arg:
      //   argsMap[#resizeToAvoidBottomInset] = arg;
      // case bool arg:
      //   argsMap[#primary] = arg;
      // case bool arg:
      //   argsMap[#extendBody] = arg;
      // case bool arg:
      //   argsMap[#extendBodyBehindAppBar] = arg;
      // case bool arg:
      //   argsMap[#drawerEnableOpenDragGesture] = arg;
      // case bool arg:
      //   argsMap[#endDrawerEnableOpenDragGesture] = arg;
      // case DragStartBehavior arg:
      //   argsMap[#drawerDragStartBehavior] = arg;
      // case String arg:
      //   argsMap[#restorationId] = arg;
    }
  }

  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Scaffold.new, [], argsMap);
}
