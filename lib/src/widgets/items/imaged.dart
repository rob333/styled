import 'package:flutter/material.dart';

imaged(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case ImageProvider<Object> arg:
        argsMap[#image] = arg;
      case Widget Function(BuildContext, Widget, int?, bool) arg:
        argsMap[#frameBuilder] = arg;
      case Widget Function(BuildContext, Widget, ImageChunkEvent?) arg:
        argsMap[#loadingBuilder] = arg;
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
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#image] == null) {
      throw FlutterError("Imaged requires `image:ImageProvider<Object>`");
    }
    return true;
  }());

  return Function.apply(Image.new, [], argsMap);
}
