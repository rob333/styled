import 'package:flutter/material.dart';

formFieldd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget Function(FormFieldState) arg:
        argsMap[#builder] = arg;
      case String Function(dynamic) arg:
        argsMap[#validator] = arg;
      case void Function(dynamic) arg:
        argsMap[#onSaved] = arg;
      case bool arg:
        argsMap[#enabled] = arg;
      case AutovalidateMode arg:
        argsMap[#autovalidateMode] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case Object arg:
        argsMap[#initialValue] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#builder] == null) {
      throw FlutterError(
          "FormFieldd requires `builder:Widget Function(FormFieldState)`");
    }
    return true;
  }());

  return Function.apply(FormField.new, [], argsMap);
}
