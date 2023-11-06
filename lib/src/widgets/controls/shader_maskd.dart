import 'package:flutter/material.dart';

shaderMaskd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Shader Function(Rect) arg:
        argsMap[#shaderCallback] = arg;
      case BlendMode arg:
        argsMap[#blendMode] = arg;
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#shaderCallback] == null) {
      throw FlutterError("ShaderMaskd requires `shaderCallback:Shader Function(Rect)`");
    }
    return true;
  }());

  return Function.apply(ShaderMask.new, [], argsMap);
}
