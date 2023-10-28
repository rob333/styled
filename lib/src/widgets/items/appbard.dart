import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

appbard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int widgeti = 0;
  int iconi = 0;
  int texti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;

      case PreferredSizeWidget arg:
        argsMap[#bottom] = arg;

      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#title] = arg;
          case 1:
            argsMap[#leading] = arg;
          case 2:
            argsMap[#flexibleSpace] = arg;
        }

      case List<Widget> arg:
        argsMap[#actions] = arg;
      case bool Function(ScrollNotification) arg:
        argsMap[#notificationPredicate] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;

      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#foregroundColor] = arg;
          case 2:
            argsMap[#shadowColor] = arg;
          case 3:
            argsMap[#surfaceTintColor] = arg;
        }

      case SystemUiOverlayStyle arg:
        argsMap[#systemOverlayStyle] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;

      case IconThemeData arg:
        switch (iconi++) {
          case 0:
            argsMap[#iconTheme] = arg;
          case 1:
            argsMap[#actionsIconTheme] = arg;
        }

      case TextStyle arg:
        switch (texti++) {
          case 0:
            argsMap[#toolbarTextStyle] = arg;
          case 1:
            argsMap[#titleTextStyle] = arg;
        }

      // case bool arg:
      //   argsMap[#automaticallyImplyLeading] = arg;
      // case bool arg:
      //   argsMap[#primary] = arg;
      // case bool arg:
      //   argsMap[#centerTitle] = arg;
      // case bool arg:
      //   argsMap[#excludeHeaderSemantics] = arg;
      // case bool arg:
      //   argsMap[#forceMaterialTransparency] = arg;

      // case double arg:
      //   argsMap[#elevation] = arg;
      // case double arg:
      //   argsMap[#scrolledUnderElevation] = arg;
      // case double arg:
      //   argsMap[#titleSpacing] = arg;
      // case double arg:
      //   argsMap[#toolbarOpacity] = arg;
      // case double arg:
      //   argsMap[#bottomOpacity] = arg;
      // case double arg:
      //   argsMap[#toolbarHeight] = arg;
      // case double arg:
      //   argsMap[#leadingWidth] = arg;
    }
  }

  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(AppBar.new, [], argsMap);
}
