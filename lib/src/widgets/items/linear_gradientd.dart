import 'package:flutter/material.dart';

linearGradientd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int aligni = 0;
  final List<Color> colors = <Color>[];
  final List<double> doubles = <double>[];

  for (final arg in argsList) {
    switch (arg) {
      case AlignmentGeometry arg:
        switch (aligni++) {
          case 0:
            argsMap[#begin] = arg;
          case 1:
            argsMap[#end] = arg;
        }
      case List<Color> arg:
        // argsMap[#colors] = arg;
        colors.addAll(arg);
      case Color arg:
        colors.add(arg);
      case List<double> arg:
        // argsMap[#stops] = arg;
        doubles.addAll(arg);
      case double arg:
        doubles.add(arg);
      case TileMode arg:
        argsMap[#tileMode] = arg;
      case GradientTransform arg:
        argsMap[#transform] = arg;
    }
  }

  // required arguments
  argsMap[#colors] = colors;

  // optional arguments
  if (doubles.isNotEmpty) {
    argsMap[#stops] = doubles;
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(LinearGradient.new, [], argsMap);
}
