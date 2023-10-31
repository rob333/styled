import 'package:flutter/material.dart';
import '../layout/containerd.dart' show mergeDecoration;

tooltipd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int edgeinseti = 0;
  int booli = 0;
  int durationi = 0;
  int doublei = 0;

  //* mixin `Decoration`
  final decoMap = <Symbol, dynamic>{};
  Decoration? decoInList; //, decoInMap;
  final List<BoxShadow> boxShadow = []; // for Decoration

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case String arg:
        argsMap[#message] = arg;
      case InlineSpan arg:
        argsMap[#richMessage] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#height] = arg;
          case 1:
            argsMap[#verticalOffset] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#height] = arg.toDouble();
          case 1:
            argsMap[#verticalOffset] = arg.toDouble();
        }
      case EdgeInsetsGeometry arg:
        switch (edgeinseti++) {
          case 0:
            argsMap[#padding] = arg;
          case 1:
            argsMap[#margin] = arg;
        }
      case Decoration arg:
        argsMap[#decoration] = arg;
      case TextStyle arg:
        argsMap[#textStyle] = arg;
      case TextAlign arg:
        argsMap[#textAlign] = arg;
      case Duration arg:
        switch (durationi++) {
          case 0:
            argsMap[#waitDuration] = arg;
          case 1:
            argsMap[#showDuration] = arg;
        }
      case TooltipTriggerMode arg:
        argsMap[#triggerMode] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#preferBelow] = arg;
          case 1:
            argsMap[#excludeFromSemantics] = arg;
          case 2:
            argsMap[#enableFeedback] = arg;
        }
      case void Function() arg:
        argsMap[#onTriggered] = arg;

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

  // handled in `mergeDecoration`
  // // named args(origArgsMap) precedes positional ones
  // if (origArgsMap.isNotEmpty) {
  //   argsMap.addAll(origArgsMap);
  // }

  return Function.apply(Tooltip.new, [], argsMap);
}
