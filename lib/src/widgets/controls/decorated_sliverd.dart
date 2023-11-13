import 'package:flutter/material.dart';

import '../layout/containerd.dart' show mergeDecoration;

decoratedSliverd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  //* mixin `Decoration`
  final decoMap = <Symbol, dynamic>{};
  Decoration? decoInList; //, decoInMap;
  final List<BoxShadow> boxShadow = []; // for Decoration

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Decoration arg:
        argsMap[#decoration] = arg;
      case DecorationPosition arg:
        argsMap[#position] = arg;
      case Widget arg:
        argsMap[#sliver] = arg;

      //* mixin `Decoration`
      case Color arg: // as above has it and assigned it to `color`
        decoMap[#color] = arg;
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

  mergeDecoration(argsMap, origArgsMap, decoMap, decoInList, boxShadow, null);

  //* required:
  assert(() {
    if (argsMap[#decoration] == null) {
      throw FlutterError("DecoratedSliverd requires `decoration:Decoration`");
    }
    return true;
  }());

  return Function.apply(DecoratedSliver.new, [], argsMap);
}
