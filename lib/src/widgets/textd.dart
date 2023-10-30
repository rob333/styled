// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../enums.dart';

textd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  // argsMap ??= {};
  const textStyleSymbols = [
    #color,
    #backgroundColor,
    #decorationColor,
    #fontSize,
    #letterSpacing,
    #wordSpacing,
    #height,
    #decorationThickness,
    #debugLabel,
    #package,
    #fontWeight,
    #fontStyle,
    #textBaseline,
    #leadingDistribution,
    #foreground,
    #background,
    #shadows,
    #fontFeatures,
    #fontVariations,
    #decoration,
    #decorationStyle,
    #fontFamilyFallback,
  ];
  final newArgsList = [];
  int strIdx = 0;
  int colorIdx = 0;
  int doubleIdx = 0;
  int localeIdx = 0;
  int paintIdx = 0;
  int overflowIdx = 0;

  // TextStyle
  final textStyle = <Symbol, dynamic>{}; //{...argsMap};
  TextStyle? textStyleInList;
  final textStyleInMap = origArgsMap[#style] as TextStyle?;

  // marshaling argsList int argsMap, testStyle
  for (final arg in argsList) {
    switch (arg) {
      //* namedArguments
      case Key arg:
        argsMap[const Symbol("key")] = arg;
      case TextStyle arg:
        // argsMap[const Symbol("style")] = arg;
        textStyleInList = arg;
      case StrutStyle arg:
        argsMap[const Symbol("strutStyle")] = arg;
      case TextAlign arg:
        argsMap[const Symbol("textAlign")] = arg;
      case TextDirection arg:
        argsMap[const Symbol("textDirection")] = arg;

      case Locale arg:
        switch (localeIdx++) {
          case 0:
            textStyle[const Symbol("locale")] = arg;
          case 1:
            argsMap[const Symbol("locale")] = arg;
        }

      case bool arg:
        argsMap[const Symbol("softWrap")] = arg;

      case TextOverflow arg:
        switch (overflowIdx++) {
          case 0:
            textStyle[const Symbol("overflow")] = arg;
          case 1:
            argsMap[const Symbol("overflow")] = arg;
        }

      case int arg:
        switch (doubleIdx++) {
          case 0:
            textStyle[const Symbol("fontSize")] = arg.toDouble();
          case 1:
            textStyle[const Symbol("letterSpacing")] = arg.toDouble();
          case 2:
            textStyle[const Symbol("wordSpacing")] = arg.toDouble();
          case 3:
            textStyle[const Symbol("height")] = arg.toDouble();
          case 4:
            textStyle[const Symbol("decorationThickness")] = arg.toDouble();
          case 5:
            argsMap[const Symbol("textScaleFactor")] = arg.toDouble();
        }
      case double arg:
        switch (doubleIdx++) {
          case 0:
            textStyle[const Symbol("fontSize")] = arg;
          case 1:
            textStyle[const Symbol("letterSpacing")] = arg;
          case 2:
            textStyle[const Symbol("wordSpacing")] = arg;
          case 3:
            textStyle[const Symbol("height")] = arg;
          case 4:
            textStyle[const Symbol("decorationThickness")] = arg;
          case 5:
            argsMap[const Symbol("textScaleFactor")] = arg;
        }

      case TextMaxLines arg:
        argsMap[const Symbol("maxLines")] = arg.index;

      case String arg:
        switch (strIdx++) {
          case 0:
            newArgsList.add(arg);
          case 1:
            textStyle[const Symbol("fontFamily")] = arg;
          case 2:
            argsMap[const Symbol("semanticsLabel")] = arg;
          case 3:
            textStyle[const Symbol("debugLabel")] = arg;
          case 4:
            textStyle[const Symbol("package")] = arg;
        }

      case TextWidthBasis arg:
        argsMap[const Symbol("textWidthBasis")] = arg;
      case TextHeightBehavior arg:
        argsMap[const Symbol("textHeightBehavior")] = arg;

      //* TextStyle
      case MaterialColor arg:
        switch (colorIdx++) {
          case 0:
            textStyle[const Symbol("color")] = arg;
          case 1:
            textStyle[const Symbol("backgroundColor")] = arg;
          case 2:
            textStyle[const Symbol("decorationColor")] = arg;
          case 3:
            argsMap[const Symbol("selectionColor")] = arg;
        }

      case Color arg:
        switch (colorIdx++) {
          case 0:
            textStyle[const Symbol("color")] = arg;
          case 1:
            textStyle[const Symbol("backgroundColor")] = arg;
          case 2:
            textStyle[const Symbol("decorationColor")] = arg;
          case 3:
            argsMap[const Symbol("selectionColor")] = arg;
        }

      case FontWeight arg:
        textStyle[const Symbol("fontWeight")] = arg;
      case FontStyle arg:
        textStyle[const Symbol("fontStyle")] = arg;
      case TextBaseline arg:
        textStyle[const Symbol("textBaseline")] = arg;
      case TextLeadingDistribution arg:
        textStyle[const Symbol("leadingDistribution")] = arg;

      case Paint arg:
        switch (paintIdx++) {
          case 0:
            textStyle[const Symbol("foreground")] = arg;
          case 1:
            textStyle[const Symbol("background")] = arg;
        }

      case List<Shadow> arg:
        textStyle[const Symbol("shadows")] = arg;
      case List<FontFeature> arg:
        textStyle[const Symbol("fontFeatures")] = arg;
      case List<FontVariation> arg:
        textStyle[const Symbol("fontVariations")] = arg;
      case TextDecoration arg:
        textStyle[const Symbol("decoration")] = arg;
      case TextDecorationStyle arg:
        textStyle[const Symbol("decorationStyle")] = arg;
      case List<String> arg:
        textStyle[const Symbol("fontFamilyFallback")] = arg;
    }
  }

  // namedArgs precede positionalArgs => copy textStyle from origArgsMap
  origArgsMap.forEach((key, value) {
    if (textStyleSymbols.contains(key)) {
      textStyle[key] = value;
    } else {
      argsMap[key] = value;
    }
  });

  late TextStyle resStyle;
  if (textStyleInMap != null) {
    final style = Function.apply(textStyleInMap.copyWith, [], textStyle);
    if (textStyleInList != null) {
      resStyle = textStyleInList.merge(style);
    } else {
      resStyle = style;
    }
  } else {
    if (textStyleInList != null) {
      resStyle = Function.apply(textStyleInList.copyWith, [], textStyle);
    } else {
      resStyle = Function.apply(TextStyle.new, [], textStyle);
    }
  }
  argsMap[#style] = resStyle;

  if (newArgsList.isNotEmpty) {
    // has String => return `Text`
    return Function.apply(Text.new, newArgsList, argsMap);
  }
  // else return `TextStyle`
  return resStyle;
}
