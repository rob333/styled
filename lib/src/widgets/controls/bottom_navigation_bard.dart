import 'package:flutter/material.dart';

bottomNavigationBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int textstylei = 0;
  int iconthemedatai = 0;
  int booli = 0;
  final List<BottomNavigationBarItem> items = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<BottomNavigationBarItem> arg:
        // argsMap[#items] = arg;
        items.addAll(arg);
      case BottomNavigationBarItem arg:
        items.add(arg);
      case void Function(int) arg:
        argsMap[#onTap] = arg;
      case int arg:
        argsMap[#currentIndex] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#iconSize] = arg;
          case 2:
            argsMap[#selectedFontSize] = arg;
          case 3:
            argsMap[#unselectedFontSize] = arg;
        }
      case BottomNavigationBarType arg:
        argsMap[#type] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#fixedColor] = arg;
          case 1:
            argsMap[#backgroundColor] = arg;
          case 2:
            argsMap[#selectedItemColor] = arg;
          case 3:
            argsMap[#unselectedItemColor] = arg;
        }
      case IconThemeData arg:
        switch (iconthemedatai++) {
          case 0:
            argsMap[#selectedIconTheme] = arg;
          case 1:
            argsMap[#unselectedIconTheme] = arg;
        }
      case TextStyle arg:
        switch (textstylei++) {
          case 0:
            argsMap[#selectedLabelStyle] = arg;
          case 1:
            argsMap[#unselectedLabelStyle] = arg;
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#showSelectedLabels] = arg;
          case 1:
            argsMap[#showUnselectedLabels] = arg;
          case 2:
            argsMap[#enableFeedback] = arg;
          case 3:
            argsMap[#useLegacyColorScheme] = arg;
        }
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case BottomNavigationBarLandscapeLayout arg:
        argsMap[#landscapeLayout] = arg;
    }
  }

  argsMap[#items] = items;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(BottomNavigationBar.new, [], argsMap);
}
