import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';

class HighlightedTextWidget extends StatelessWidget {

  final String? preText;
  final String highlightedText;
  final String? afterText;
  final TextStyle? style;
  final TextStyle? highlightStyle;
  final double underlineOffset;
  
  const HighlightedTextWidget({
    super.key,
    this.preText,
    required this.highlightedText,
    this.afterText,
    this.style,
    this.highlightStyle,
    this.underlineOffset = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? CustomTextStyle.boldHeadline;
    final boldStyle = highlightStyle ?? CustomTextStyle.extraboldHeadline;

    return RichText(
      text: TextSpan(
        style: baseStyle,
        children: [
          TextSpan(text: preText),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.h),
              child: CustomPaint(
                painter: _UnderlinePainter(offsetY: underlineOffset),
                child: Text(
                  highlightedText,
                  style: boldStyle,
                ),
              ),
            ),
          ),
          TextSpan(text: afterText),
        ],
      ),
    );  }

    
}

class _UnderlinePainter extends CustomPainter {
  final double offsetY;

  _UnderlinePainter({required this.offsetY});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorSchemes.primaryColorScheme.onSurface
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height - offsetY);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - offsetY * 8,
      size.width + 10.h,
      size.height + offsetY * 2,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
