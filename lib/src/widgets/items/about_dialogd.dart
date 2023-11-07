import 'package:flutter/material.dart';

aboutDialogd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int stringi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#applicationName] = arg;
          case 1:
            argsMap[#applicationVersion] = arg;
          case 2:
            argsMap[#applicationLegalese] = arg;
        }
      case Widget arg:
        argsMap[#applicationIcon] = arg;
      case List<Widget> arg:
        argsMap[#children] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(AboutDialog.new, [], argsMap);
}
