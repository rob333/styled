import 'package:flutter/material.dart';

imageAssetd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int stringi = 0;
  int doublei = 0;
  int inti = 0;
  String? name;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case AssetBundle arg:
        argsMap[#bundle] = arg;
      case Widget Function(BuildContext, Widget, int?, bool) arg:
        argsMap[#frameBuilder] = arg;
      case Widget Function(BuildContext, Object, StackTrace?) arg:
        argsMap[#errorBuilder] = arg;
      case String arg:
        switch (stringi++) {
          case 0:
            // argsMap[#name] = arg;
            name = arg;
          case 1:
            argsMap[#semanticLabel] = arg;
          case 2:
            argsMap[#package] = arg;
        }
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
    if (name == null) {
      throw FlutterError("ImageAssetd requires a `String` as the name of the asset.");
    }
    return true;
  }());

  return Function.apply(Image.asset, [name!], argsMap);
}
