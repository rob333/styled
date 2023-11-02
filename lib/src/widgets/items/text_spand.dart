import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

textSpand(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int stringi = 0;
  final List<InlineSpan> spans = [];

  for (final arg in argsList) {
    switch (arg) {
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#text] = arg;
          case 1:
            argsMap[#semanticsLabel] = arg;
        }
      case List<InlineSpan> arg:
        // argsMap[#children] = arg;
        spans.addAll(arg);
      case InlineSpan arg:
        spans.add(arg);
      case TextStyle arg:
        argsMap[#style] = arg;
      case GestureRecognizer arg:
        argsMap[#recognizer] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case void Function(PointerEnterEvent) arg:
        argsMap[#onEnter] = arg;
      case void Function(PointerExitEvent) arg:
        argsMap[#onExit] = arg;
      case Locale arg:
        argsMap[#locale] = arg;
      case bool arg:
        argsMap[#spellOut] = arg;
    }
  }

  argsMap[#children] = spans;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(TextSpan.new, [], argsMap);
}
