import 'package:flutter/material.dart';

notificationListenerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case bool Function(dynamic) arg:
        argsMap[#onNotification] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("NotificationListenerd requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(NotificationListener.new, [], argsMap);
}
