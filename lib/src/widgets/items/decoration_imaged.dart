import 'package:flutter/material.dart';

decorationImaged(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case ImageProvider<Object> arg:
        argsMap[#image] = arg;
      case void Function(Object, StackTrace?) arg:
        argsMap[#onError] = arg;
      case ColorFilter arg:
        argsMap[#colorFilter] = arg;
      case BoxFit arg:
        argsMap[#fit] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case Rect arg:
        argsMap[#centerSlice] = arg;
      case ImageRepeat arg:
        argsMap[#repeat] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#scale] = arg;
          case 1:
            argsMap[#opacity] = arg;
        }
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

  return Function.apply(DecorationImage.new, [], argsMap);
}
