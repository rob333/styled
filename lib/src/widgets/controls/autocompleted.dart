import 'package:flutter/material.dart';
import 'dart:async';

autocompleted(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case FutureOr<Iterable> Function(TextEditingValue) arg:
        argsMap[#optionsBuilder] = arg;
      case String Function(dynamic) arg:
        argsMap[#displayStringForOption] = arg;
      case Widget Function(
            BuildContext, TextEditingController, FocusNode, void Function())
        arg:
        argsMap[#fieldViewBuilder] = arg;
      case void Function(dynamic) arg:
        argsMap[#onSelected] = arg;
      case double arg:
        argsMap[#optionsMaxHeight] = arg;
      case int arg:
        argsMap[#optionsMaxHeight] = arg.toDouble();
      case Widget Function(BuildContext, void Function(dynamic), Iterable) arg:
        argsMap[#optionsViewBuilder] = arg;
      case OptionsViewOpenDirection arg:
        argsMap[#optionsViewOpenDirection] = arg;
      case TextEditingValue arg:
        argsMap[#initialValue] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#optionsBuilder] == null) {
      throw FlutterError(
          "Autocompleted requires `optionsBuilder:FutureOr<Iterable<T>> Function(TextEditingValue)`");
    }
    return true;
  }());

  return Function.apply(Autocomplete.new, [], argsMap);
}
