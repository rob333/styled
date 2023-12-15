import 'package:flutter/material.dart';

overlayPortald(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case OverlayPortalController arg:
        argsMap[#controller] = arg;
      case Widget Function(BuildContext) arg:
        argsMap[#overlayChildBuilder] = arg;
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
    if (argsMap[#child] == null || argsMap[#actions] == null) {
      throw FlutterError(
          "Actionsd requires `controller:OverlayPortalController` and `overlayChildBuilder:Widget Function(BuildContext)`");
    }
    return true;
  }());

  return Function.apply(OverlayPortal.new, [], argsMap);
}
