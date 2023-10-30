import 'package:flutter/widgets.dart';

core(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  switch (argsList) {
    case [String text, double fontSize]:
      return Text(text, style: TextStyle(fontSize: fontSize));
    case [String text, int fontSize]:
      return Text(text, style: TextStyle(fontSize: fontSize.toDouble()));
    case [String text, TextStyle style]:
      return Text(text, style: style);
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Container.new, argsList, argsMap);
}
