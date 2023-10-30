import 'package:flutter/material.dart';

containerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int decorationi = 0;
  int doublei = 0;
  int edgeInsetsGeometryi = 0;
  int alignmentGeometryi = 0;

  //* mixin `Decoration`
  final decoMap = <Symbol, dynamic>{};
  Decoration? decoInList, decoInMap;
  Color? color; // either goes into Decoration or Container(can't be both)
  final List<BoxShadow> boxShadow = []; // for Decoration

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#height] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg.toDouble();
          case 1:
            argsMap[#height] = arg.toDouble();
        }
      case AlignmentGeometry arg:
        switch (alignmentGeometryi++) {
          case 0:
            argsMap[#alignment] = arg;
          case 1:
            argsMap[#transformAlignment] = arg;
        }
      case Color arg:
        // argsMap[#color] = arg;
        color = arg;
      case Decoration arg:
        switch (decorationi++) {
          case 0:
            // argsMap[#decoration] = arg;
            decoInList = arg;
          case 1:
            argsMap[#foregroundDecoration] = arg;
        }
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
      case EdgeInsetsGeometry arg:
        switch (edgeInsetsGeometryi++) {
          case 0:
            argsMap[#padding] = arg;
          case 1:
            argsMap[#margin] = arg;
        }
      case Matrix4 arg:
        argsMap[#transform] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;

      //* mixin `Decoration`
      // case Color arg: // as above has it and assigned it to `color`
      //   decoMap[#color] = arg;
      case DecorationImage arg:
        decoMap[#image] = arg;
      case BoxBorder arg:
        decoMap[#border] = arg;
      case BorderRadiusGeometry arg:
        decoMap[#borderRadius] = arg;
      case List<BoxShadow> arg:
        // decoMap[#boxShadow] = arg;
        boxShadow.addAll(arg);
      case BoxShadow arg:
        boxShadow.add(arg);
      case Gradient arg:
        decoMap[#gradient] = arg;
      case BlendMode arg:
        decoMap[#backgroundBlendMode] = arg;
      case BoxShape arg:
        decoMap[#shape] = arg;
    }
  }

  //* BoxShadow handling
  if (boxShadow.isNotEmpty) {
    // if (isBoxDecorationMap(decoMap)) {
    decoMap[#boxShadow] = boxShadow;
    // } else {
    //   decoMap[#shadows] = boxShadow; // ShapeDecoration
    // }
  }

  //* mixin `Decoration`:
  //* positional arg(in decoMap) < positional decoration < named arg < named decoration
  // merge `positional args(decoMap)` into `decoInList`
  if (decoInList != null && decoMap.isNotEmpty) {
    decoMap[#color] = color;
    decoInList = copyWithMap(decoInList, decoMap);
  }

  const decorationSymbols = [
    #color,
    #image,
    #border,
    #borderRadius,
    #boxShadow,
    #gradient,
    #backgroundBlendMode,
    #shape,
    #shadows, // ShapeDecoration
  ];

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    origArgsMap.forEach((key, value) {
      if (decorationSymbols.contains(key)) {
        //* fills decoMap with named args of decoration symbols
        decoMap[key] = value;
      } else {
        argsMap[key] = value;
      }
    });
  }

  //* merge `named args(decoMap)` into `decoInMap`
  decoInMap = origArgsMap[#decoration];
  if (decoInMap != null && decoMap.isNotEmpty) {
    decoMap[#color] = color;
    decoInMap = copyWithMap(decoInMap, decoMap);
  }

  //* compare decoInMap with decoInList
  if (decoInMap != null && decoInList != null) {
    final deco = copyWith(decoInMap, decoInList);
    argsMap[#decoration] = deco;
  } else if (decoInMap != null) {
    argsMap[#decoration] = decoInMap;
  } else if (decoInList != null) {
    argsMap[#decoration] = decoInList;
  } else if (decoMap.isNotEmpty) {
    decoMap[#color] ??= color;
    final isBoxDeco = isBoxDecorationMap(decoMap);
    final fn = isBoxDeco ? BoxDecoration.new : ShapeDecoration.new;
    final deco = Function.apply(fn, [], decoMap);
    argsMap[#decoration] = deco;
  } else {
    argsMap[#color] = color;
  }

  return Function.apply(Container.new, [], argsMap);
}

// Copy from source of `box_decoration.dart` and modify a bit.
Decoration? copyWith(Decoration main, Decoration sub) {
  switch (main) {
    case BoxDecoration arg:
      // copy from source `BoxDecoration.copyWith` and change a bit
      sub = sub as BoxDecoration;
      return BoxDecoration(
          color: arg.color ?? sub.color,
          image: arg.image ?? sub.image,
          border: arg.border ?? sub.border,
          borderRadius: arg.borderRadius ?? sub.borderRadius,
          boxShadow: arg.boxShadow ?? sub.boxShadow,
          gradient: arg.gradient ?? sub.gradient,
          backgroundBlendMode:
              arg.backgroundBlendMode ?? sub.backgroundBlendMode,
          shape: arg.shape //- ?? sub.shape,
          );
    case ShapeDecoration arg:
      sub = sub as ShapeDecoration;
      return ShapeDecoration(
          color: arg.color ?? sub.color,
          image: arg.image ?? sub.image,
          gradient: arg.gradient ?? sub.gradient,
          shadows: arg.shadows ?? sub.shadows,
          shape: arg.shape //- ?? sub.shape,
          );
  }
  return null;
}

Decoration? copyWithMap(Decoration main, Map<Symbol, dynamic> sub) {
  switch (main) {
    case BoxDecoration arg:
      // copy from source `BoxDecoration.copyWith` and change a bit
      return BoxDecoration(
          color: arg.color ?? sub[#color],
          image: arg.image ?? sub[#image],
          border: arg.border ?? sub[#border],
          borderRadius: arg.borderRadius ?? sub[#borderRadius],
          boxShadow: arg.boxShadow ?? sub[#boxShadow],
          gradient: arg.gradient ?? sub[#gradient],
          backgroundBlendMode:
              arg.backgroundBlendMode ?? sub[#backgroundBlendMode],
          shape: arg.shape //- ?? sub[#shape],
          );
    case ShapeDecoration arg:
      return ShapeDecoration(
          color: arg.color ?? sub[#color],
          image: arg.image ?? sub[#image],
          gradient: arg.gradient ?? sub[#gradient],
          shadows: arg.shadows ?? sub[#shadows],
          shape: arg.shape //- ?? sub[#shape],
          );
  }
  return null;
}

bool isBoxDecorationMap(Map<Symbol, dynamic> map) {
  //* BoxDecoration:
  // this.color,
  // this.image,
  // this.border,
  // this.borderRadius,
  // this.boxShadow,
  // this.gradient,
  // this.backgroundBlendMode,
  // this.shape = BoxShape.rectangle,
  //* ShapeDecoration:
  // this.color,
  // this.image,
  // this.gradient,
  // this.shadows,
  // required this.shape,

  return true; // currently only support BoxDecoration
  // bool res = (map[#border] != null ||
  //     map[#borderRadius] != null ||
  //     map[#boxShadow] != null ||
  //     map[#backgroundBlendMode] != null);
  // // && (map[#shadows] == null);
  // return res;
}
