import 'package:flutter/material.dart';

import '../layout/containerd.dart' show mergeDecoration;

inkd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  //* mixin `Decoration`
  final decoMap = <Symbol, dynamic>{};
  Decoration? decoInList; //, decoInMap;
  Color? color; // either goes into Decoration or Container(can't be both)
  final List<BoxShadow> boxShadow = []; // for Decoration

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#height] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg.toDouble();
          case 1:
            argsMap[#height] = arg.toDouble();
        }
      case Color arg:
        argsMap[#color] = arg;
      case Decoration arg:
        argsMap[#decoration] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;

      //* mixin `Decoration`
      // case Color arg: // as above has it and assigned it to `color`
      //   decoMap[#color] = arg;
      case DecorationImage arg:
        decoMap[#image] = arg;
      case BoxBorder arg:
        decoMap[#border] = arg;
      case BorderRadiusGeometry arg:
        decoMap[#borderRadius] = arg;
      case List<BoxShadow> arg:
        // decoMap[#boxShadow] = arg;
        boxShadow.addAll(arg);
      case BoxShadow arg:
        boxShadow.add(arg);
      case Gradient arg:
        decoMap[#gradient] = arg;
      case BlendMode arg:
        decoMap[#backgroundBlendMode] = arg;
      case BoxShape arg:
        decoMap[#shape] = arg;
    }
  }

  mergeDecoration(argsMap, origArgsMap, decoMap, decoInList, boxShadow, color);

  return Function.apply(Ink.new, [], argsMap);
}
