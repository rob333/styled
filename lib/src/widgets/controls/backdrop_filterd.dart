import 'package:flutter/material.dart';
import 'dart:ui';

backdropFilterd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case ImageFilter arg:
        argsMap[#filter] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case BlendMode arg:
        argsMap[#blendMode] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#filter] == null) {
      throw FlutterError("BackdropFilterd requires `filter:ImageFilter`");
    }
    return true;
  }());

  return Function.apply(BackdropFilter.new, [], argsMap);
}
