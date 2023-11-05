import 'package:flutter/material.dart';
import 'dart:typed_data';

imageMemoryd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;
  int inti = 0;
  Uint8List? bytes;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Uint8List arg:
        bytes = arg;
      case Widget Function(BuildContext, Widget, int?, bool) arg:
        argsMap[#frameBuilder] = arg;
      case Widget Function(BuildContext, Object, StackTrace?) arg:
        argsMap[#errorBuilder] = arg;
      case String arg:
        argsMap[#semanticLabel] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#height] = arg;
          case 2:
            argsMap[#scale] = arg;
        }
      case Color arg:
        argsMap[#color] = arg;
      case Animation<double> arg:
        argsMap[#opacity] = arg;
      case BlendMode arg:
        argsMap[#colorBlendMode] = arg;
      case BoxFit arg:
        argsMap[#fit] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case ImageRepeat arg:
        argsMap[#repeat] = arg;
      case Rect arg:
        argsMap[#centerSlice] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#excludeFromSemantics] = arg;
          case 1:
            argsMap[#matchTextDirection] = arg;
          case 2:
            argsMap[#gaplessPlayback] = arg;
          case 3:
            argsMap[#isAntiAlias] = arg;
        }
      case FilterQuality arg:
        argsMap[#filterQuality] = arg;
      case int arg:
        switch (inti++) {
          case 0:
            argsMap[#cacheWidth] = arg;
          case 1:
            argsMap[#cacheHeight] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (bytes == null) {
      throw FlutterError("ImageAssetd requires a `Uint8List`.");
    }
    return true;
  }());

  return Function.apply(Image.memory, [bytes!], argsMap);
}
