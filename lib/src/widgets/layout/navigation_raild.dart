import 'package:flutter/material.dart';

navigationRaild(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int doublei = 0;
  int textstylei = 0;
  int iconthemedatai = 0;
  int booli = 0;
  int colori = 0;
  final List<NavigationRailDestination> destinations = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<NavigationRailDestination> arg:
        // argsMap[#destinations] = arg;
        destinations.addAll(arg);
      case NavigationRailDestination arg:
        destinations.add(arg);
      case int arg:
        argsMap[#selectedIndex] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#indicatorColor] = arg;
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#extended] = arg;
          case 1:
            argsMap[#useIndicator] = arg;
        }
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#leading] = arg;
          case 1:
            argsMap[#trailing] = arg;
        }
      case void Function(int) arg:
        argsMap[#onDestinationSelected] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#groupAlignment] = arg;
          case 2:
            argsMap[#minWidth] = arg;
          case 3:
            argsMap[#minExtendedWidth] = arg;
        }
      case NavigationRailLabelType arg:
        argsMap[#labelType] = arg;
      case TextStyle arg:
        switch (textstylei++) {
          case 0:
            argsMap[#unselectedLabelTextStyle] = arg;
          case 1:
            argsMap[#selectedLabelTextStyle] = arg;
        }
      case IconThemeData arg:
        switch (iconthemedatai++) {
          case 0:
            argsMap[#unselectedIconTheme] = arg;
          case 1:
            argsMap[#selectedIconTheme] = arg;
        }
      case ShapeBorder arg:
        argsMap[#indicatorShape] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#selectedIndex] == null || argsMap[#destinations] == null) {
      throw FlutterError("NavigationRaild requires `selectedIndex:int` and `destinations:List<NavigationRailDestination>`");
    }
    return true;
  }());

  return Function.apply(NavigationRail.new, [], argsMap);
}
