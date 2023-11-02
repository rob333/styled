import 'package:flutter/widgets.dart';
import 'dart:ui';

imageComposed(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int filteri = 0;

  for (final arg in argsList) {
    switch (arg) {
      case ImageFilter arg:
        switch (filteri++) {
          case 0:
            argsMap[#outer] = arg;
          case 1:
            argsMap[#inner] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#outer] == null || argsMap[#inner] == null) {
      throw FlutterError(
          "ImageComposed without `outer:ImageFilter` and `inner:ImageFilter`");
    }
    return true;
  }());

  return Function.apply(ImageFilter.compose, [], argsMap);
}
