import 'package:flutter/material.dart';

linearGradientd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int aligni = 0;
  final List<Color> colors = <Color>[];
  final List<double> stops = <double>[];

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
        stops.addAll(arg);
      case double arg:
        stops.add(arg);
      case TileMode arg:
        argsMap[#tileMode] = arg;
      case GradientTransform arg:
        argsMap[#transform] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge colors
    final list = argsMap[#colors] as List<Color>?;
    if (list != null) {
      colors.addAll(list);
    }

    // merge stops
    final map2 = argsMap[#stops] as List<double>?;
    if (map2 != null) {
      stops.addAll(map2);
    }
  }

  // required arguments
  argsMap[#colors] = colors;

  // optional arguments
  if (stops.isNotEmpty) {
    argsMap[#stops] = stops;
  }

  return Function.apply(LinearGradient.new, [], argsMap);
}
