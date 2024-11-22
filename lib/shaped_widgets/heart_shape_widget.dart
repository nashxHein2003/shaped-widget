import 'package:flutter/material.dart';

/// A customizable HeartWidget that displays a heart shape with optional text inside.
///
/// This widget allows you to:
/// - Adjust the size of the heart.
/// - Enter custom text inside the heart.
/// - Customize colors for the heart and text.
/// - Modify padding and alignment of the text inside the heart.
///
/// ### Parameters:
/// - [size]: The size of the heart.
/// - [color]: The color of the heart. Defaults to [Colors.red].
/// - [text]: The text displayed inside the heart. Defaults to an empty string.
/// - [textStyle]: The style of the text. Defaults to a basic white font.
/// - [padding]: Padding around the text inside the heart. Defaults to [EdgeInsets.zero].
/// - [alignment]: Alignment of the text within the heart. Defaults to [Alignment.center].
///
/// ### Example:
/// ```dart
/// HeartWidget(
///   size: 200,
///   color: Colors.pink,
///   text: "Love",
///   textStyle: TextStyle(fontSize: 24, color: Colors.white),
///   alignment: Alignment.center,
/// )
/// ```
class HeartShapeWidget extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry padding;
  final Alignment alignment;

  const HeartShapeWidget({
    Key? key,
    this.size = 100,
    this.color = Colors.grey,
    this.text = '',
    this.textStyle,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _HeartPainter(color: color),
      child: Container(
        width: size,
        height: size,
        alignment: alignment,
        padding: padding,
        child: Text(
          text,
          style: textStyle ?? const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _HeartPainter extends CustomPainter {
  final Color color;

  _HeartPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();

    final width = size.width;
    final height = size.height;

    path.moveTo(width / 2, height / 3.5); // Start at the top-center
    path.cubicTo(
      0, height / 9, // Control point 1 (left lobe curve)
      0, height * 3 / 4, // Control point 2 (left curve to bottom)
      width / 2, height, // Bottom tip
    );
    path.cubicTo(
      width, height * 3 / 4, // Control point 3 (right curve to bottom)
      width, height / 8, // Control point 4 (right lobe curve)
      width / 2, height / 3.5, // End at the top-center
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
