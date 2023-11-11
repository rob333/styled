import 'package:flutter/material.dart';

rawImaged(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Image arg:
        argsMap[#image] = arg;
      case String arg:
        argsMap[#debugImageLabel] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#height] = arg;
          case 2:
            argsMap[#scale] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg.toDouble();
          case 1:
            argsMap[#height] = arg.toDouble();
          case 2:
            argsMap[#scale] = arg.toDouble();
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
      case FilterQuality arg:
        argsMap[#filterQuality] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#matchTextDirection] = arg;
          case 1:
            argsMap[#invertColors] = arg;
          case 2:
            argsMap[#isAntiAlias] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(RawImage.new, [], argsMap);
}
