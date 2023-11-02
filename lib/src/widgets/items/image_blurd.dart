import 'dart:ui';

imageBlurd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#sigmaX] = arg;
          case 1:
            argsMap[#sigmaY] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#sigmaX] = arg.toDouble();
          case 1:
            argsMap[#sigmaY] = arg.toDouble();
        }
      case TileMode arg:
        argsMap[#tileMode] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(ImageFilter.blur, [], argsMap);
}
