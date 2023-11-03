import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

semanticsd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int functioni = 0;
  int booli = 0;
  int stringi = 0;
  int inti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case SemanticsSortKey arg:
        argsMap[#sortKey] = arg;
      case SemanticsTag arg:
        argsMap[#tagForChildren] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      // case void Function(bool) arg:
      //   argsMap[#onMoveCursorBackwardByCharacter] = arg;
      // case void Function(bool) arg:
      //   argsMap[#onMoveCursorForwardByCharacter] = arg;
      // case void Function(TextSelection) arg:
      //   argsMap[#onSetSelection] = arg;
      // case void Function(String) arg:
      //   argsMap[#onSetText] = arg;
      // case Map<CustomSemanticsAction, void Function()> arg:
      //   argsMap[#customSemanticsActions] = arg;
      case void Function() arg:
        switch (functioni++) {
          case 0:
            argsMap[#onTap] = arg;
          case 1:
            argsMap[#onLongPress] = arg;
        }
      case int arg:
        switch (inti++) {
          case 0:
            argsMap[#maxValueLength] = arg;
          case 1:
            argsMap[#currentValueLength] = arg;
        }

      // case void Function() arg:
      //   argsMap[#onScrollLeft] = arg;
      // case void Function() arg:
      //   argsMap[#onScrollRight] = arg;
      // case void Function() arg:
      //   argsMap[#onScrollUp] = arg;
      // case void Function() arg:
      //   argsMap[#onScrollDown] = arg;
      // case void Function() arg:
      //   argsMap[#onIncrease] = arg;
      // case void Function() arg:
      //   argsMap[#onDecrease] = arg;
      // case void Function() arg:
      //   argsMap[#onCopy] = arg;
      // case void Function() arg:
      //   argsMap[#onCut] = arg;
      // case void Function() arg:
      //   argsMap[#onPaste] = arg;
      // case void Function() arg:
      //   argsMap[#onDismiss] = arg;
      // case void Function() arg:
      //   argsMap[#onDidGainAccessibilityFocus] = arg;
      // case void Function() arg:
      //   argsMap[#onDidLoseAccessibilityFocus] = arg;
      // case bool arg:
      //   argsMap[#container] = arg;
      // case bool arg:
      //   argsMap[#explicitChildNodes] = arg;
      // case bool arg:
      //   argsMap[#excludeSemantics] = arg;
      // case bool arg:
      //   argsMap[#blockUserActions] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#enabled] = arg;
          case 1:
            argsMap[#checked] = arg;
        }
      // case bool arg:
      //   argsMap[#mixed] = arg;
      // case bool arg:
      //   argsMap[#selected] = arg;
      // case bool arg:
      //   argsMap[#toggled] = arg;
      // case bool arg:
      //   argsMap[#button] = arg;
      // case bool arg:
      //   argsMap[#slider] = arg;
      // case bool arg:
      //   argsMap[#keyboardKey] = arg;
      // case bool arg:
      //   argsMap[#link] = arg;
      // case bool arg:
      //   argsMap[#header] = arg;
      // case bool arg:
      //   argsMap[#textField] = arg;
      // case bool arg:
      //   argsMap[#readOnly] = arg;
      // case bool arg:
      //   argsMap[#focusable] = arg;
      // case bool arg:
      //   argsMap[#focused] = arg;
      // case bool arg:
      //   argsMap[#inMutuallyExclusiveGroup] = arg;
      // case bool arg:
      //   argsMap[#obscured] = arg;
      // case bool arg:
      //   argsMap[#multiline] = arg;
      // case bool arg:
      //   argsMap[#scopesRoute] = arg;
      // case bool arg:
      //   argsMap[#namesRoute] = arg;
      // case bool arg:
      //   argsMap[#hidden] = arg;
      // case bool arg:
      //   argsMap[#image] = arg;
      // case bool arg:
      //   argsMap[#liveRegion] = arg;
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#label] = arg;
          case 1:
            argsMap[#value] = arg;
          case 2:
            argsMap[#tooltip] = arg;
          case 3:
            argsMap[#hint] = arg;
        }
      // case String arg:
      //   argsMap[#increasedValue] = arg;
      // case String arg:
      //   argsMap[#decreasedValue] = arg;
      // case String arg:
      //   argsMap[#onTapHint] = arg;
      // case String arg:
      //   argsMap[#onLongPressHint] = arg;
      // case AttributedString arg:
      //   argsMap[#attributedLabel] = arg;
      // case AttributedString arg:
      //   argsMap[#attributedValue] = arg;
      // case AttributedString arg:
      //   argsMap[#attributedIncreasedValue] = arg;
      // case AttributedString arg:
      //   argsMap[#attributedDecreasedValue] = arg;
      // case AttributedString arg:
      //   argsMap[#attributedHint] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Semantics.new, [], argsMap);
}
