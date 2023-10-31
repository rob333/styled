import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

sliverAppBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  // int doublei = 0;
  int textstylei = 0;
  int widgeti = 0;
  int iconthemei = 0;

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
      case IconThemeData arg:
        switch (iconthemei++) {
          case 0:
            argsMap[#iconTheme] = arg;
          case 1:
            argsMap[#actionsIconTheme] = arg;
        }
      case Future<void> Function() arg:
        argsMap[#onStretchTrigger] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case TextStyle arg:
        switch (textstylei++) {
          case 0:
            argsMap[#titleTextStyle] = arg;
          case 1:
            argsMap[#toolbarTextStyle] = arg;
        }
      case SystemUiOverlayStyle arg:
        argsMap[#systemOverlayStyle] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;

      // case double arg:
      //   argsMap[#elevation] = arg;
      // case double arg:
      //   argsMap[#scrolledUnderElevation] = arg;
      // case double arg:
      //   argsMap[#titleSpacing] = arg;
      // case double arg:
      //   argsMap[#collapsedHeight] = arg;
      // case double arg:
      //   argsMap[#expandedHeight] = arg;
      // case double arg:
      //   argsMap[#stretchTriggerOffset] = arg;
      // case double arg:
      //   argsMap[#toolbarHeight] = arg;
      // case double arg:
      //   argsMap[#leadingWidth] = arg;
      // case bool arg:
      //   argsMap[#automaticallyImplyLeading] = arg;
      // case bool arg:
      //   argsMap[#forceElevated] = arg;
      // case bool arg:
      //   argsMap[#primary] = arg;
      // case bool arg:
      //   argsMap[#centerTitle] = arg;
      // case bool arg:
      //   argsMap[#excludeHeaderSemantics] = arg;
      // case bool arg:
      //   argsMap[#floating] = arg;
      // case bool arg:
      //   argsMap[#pinned] = arg;
      // case bool arg:
      //   argsMap[#snap] = arg;
      // case bool arg:
      //   argsMap[#stretch] = arg;
      // case bool arg:
      //   argsMap[#forceMaterialTransparency] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(SliverAppBar.new, [], argsMap);
}
