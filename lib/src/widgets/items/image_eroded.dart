import 'dart:ui';

imageEroded(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#radiusX] = arg;
          case 1:
            argsMap[#radiusY] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#radiusX] = arg.toDouble();
          case 1:
            argsMap[#radiusY] = arg.toDouble();
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(ImageFilter.erode, [], argsMap);
}
