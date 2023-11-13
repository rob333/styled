import 'package:flutter/material.dart';

circleAvatard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int imageprovideri = 0;
  int colori = 0;
  int doublei = 0;
  int functioni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#foregroundColor] = arg;
        }
      case ImageProvider<Object> arg:
        switch (imageprovideri++) {
          case 0:
            argsMap[#backgroundImage] = arg;
          case 1:
            argsMap[#foregroundImage] = arg;
        }
      case void Function(Object, StackTrace?) arg:
        switch (functioni++) {
          case 0:
            argsMap[#onBackgroundImageError] = arg;
          case 1:
            argsMap[#onForegroundImageError] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#radius] = arg;
          case 1:
            argsMap[#minRadius] = arg;
          case 2:
            argsMap[#maxRadius] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#radius] = arg.toDouble();
          case 1:
            argsMap[#minRadius] = arg.toDouble();
          case 2:
            argsMap[#maxRadius] = arg.toDouble();
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(CircleAvatar.new, [], argsMap);
}
