import 'package:flutter/material.dart';

dataCelld(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  late Widget child;
  int booli = 0;
  int functioni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Widget arg:
        child = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#placeholder] = arg;
          case 1:
            argsMap[#showEditIcon] = arg;
        }
      case void Function(TapDownDetails) arg:
        argsMap[#onTapDown] = arg;
      case void Function() arg:
        switch (functioni++) {
          case 0:
            argsMap[#onTap] = arg;
          case 1:
            argsMap[#onLongPress] = arg;
          case 2:
            argsMap[#onDoubleTap] = arg;
          case 3:
            argsMap[#onTapCancel] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(DataCell.new, [child], argsMap);
}
