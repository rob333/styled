import 'package:flutter/material.dart';

defaultTextStyled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case TextStyle arg:
        argsMap[#style] = arg;
      case TextAlign arg:
        argsMap[#textAlign] = arg;
      case bool arg:
        argsMap[#softWrap] = arg;
      case TextOverflow arg:
        argsMap[#overflow] = arg;
      case int arg:
        argsMap[#maxLines] = arg;
      case TextWidthBasis arg:
        argsMap[#textWidthBasis] = arg;
      case TextHeightBehavior arg:
        argsMap[#textHeightBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#style] == null || argsMap[#child] == null) {
      throw FlutterError("DefaultTextStyled requires `style:TextStyle` and `child:Widget`");
    }
    return true;
  }());

  return Function.apply(DefaultTextStyle.new, [], argsMap);
}
