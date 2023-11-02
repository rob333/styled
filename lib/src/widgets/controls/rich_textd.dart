import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

richTextd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case InlineSpan arg:
        argsMap[#text] = arg;
      case TextAlign arg:
        argsMap[#textAlign] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case bool arg:
        argsMap[#softWrap] = arg;
      case TextOverflow arg:
        argsMap[#overflow] = arg;
      case double arg:
        argsMap[#textScaleFactor] = arg;
      case int arg:
        argsMap[#maxLines] = arg;
      case Locale arg:
        argsMap[#locale] = arg;
      case StrutStyle arg:
        argsMap[#strutStyle] = arg;
      case TextWidthBasis arg:
        argsMap[#textWidthBasis] = arg;
      case TextHeightBehavior arg:
        argsMap[#textHeightBehavior] = arg;
      case SelectionRegistrar arg:
        argsMap[#selectionRegistrar] = arg;
      case Color arg:
        argsMap[#selectionColor] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#text] == null) {
      throw FlutterError("RichTextd without `text:InlineSpan`");
    }
    return true;
  }());

  return Function.apply(RichText.new, [], argsMap);
}
