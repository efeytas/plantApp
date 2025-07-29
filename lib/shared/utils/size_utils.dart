import 'package:flutter/material.dart';

// These are the Viewport values of your Figma Design.
// These are used in the code as a reference to create your UI Responsively.
const num figmaDesignWidth = 360;
const num figmaDesignHeight = 670;
const num figmaDesignStatusBar = 0;
typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class AppSizer extends StatelessWidget {
  const AppSizer({
    super.key,
    required this.builder,
  });

  /// Builds the widget whenever the orientation changes.
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double height;
  static late double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(defaultValue: figmaDesignWidth);
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: figmaDesignWidth);
      height = boxConstraints.maxWidth.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => SizeUtils.height;
  double get h => ((this * _width) / figmaDesignWidth);
  double get v => (this * _height) / (figmaDesignHeight - figmaDesignStatusBar);
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    // ignore: unnecessary_this
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }
