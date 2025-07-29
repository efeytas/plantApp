import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/button/base_button.dart';

class CustomPrimaryButton extends BaseButton {
  const CustomPrimaryButton({
    super.key,
    this.decoration,
    this.isLoading = false,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.shrink,
    this.buttonColor,
    super.onPressed,
    super.buttonStyle,
    super.alignment,
    super.buttonTextStyle,
    super.height,
    super.width,
    required super.text,
  }) : super();

  final BoxDecoration? decoration;

  final bool? isLoading;

  final MainAxisAlignment? mainAxisAlignment;

  final CrossAxisAlignment? crossAxisAlignment;

  final bool? shrink;

  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: height ?? 56.v,
        width: width ?? (shrink == true ? null : double.maxFinite),
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: buttonStyle ??
              ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(buttonColor ?? ColorSchemes.primaryColorScheme.primary),
                elevation: WidgetStateProperty.all<double>(12.0),
                shadowColor: WidgetStateProperty.all<Color>(const Color.fromRGBO(137, 114, 247, 0.20)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.v))),
                splashFactory: NoSplash.splashFactory,
              ),
          onPressed: isLoading! ? () {} : onPressed ?? () {},
          child: isLoading!
              ? loadingWidget
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
                    crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: buttonTextStyle ?? CustomTextStyle.button,
                      ),
                    ],
                  ),
                ),
        ),
      );

  Widget get loadingWidget => SizedBox(
        height: 20.v,
        width: 20.v,
        child: Platform.isIOS
            ? const CupertinoActivityIndicator(color: Colors.white)
            : const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
      );
}
