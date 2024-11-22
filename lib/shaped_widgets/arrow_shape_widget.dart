import 'package:flutter/material.dart';

/// A customizable ArrowWidget that displays an arrow shape with optional text inside.
///
/// This widget allows you to:
/// - Adjust the size of the arrow.
/// - Enter custom text inside the arrow.
/// - Customize colors for the arrow and text.
/// - Modify padding and alignment of the text inside the arrow.
///
/// ### Parameters:
/// - [width]: The width of the arrow.
/// - [height]: The height of the arrow.
/// - [color]: The color of the arrow. Defaults to [Colors.blue].
/// - [text]: The text displayed inside the arrow. Defaults to an empty string.
/// - [textStyle]: The style of the text. Defaults to a basic black font.
/// - [padding]: Padding around the text inside the arrow. Defaults to [EdgeInsets.zero].
/// - [alignment]: Alignment of the text within the arrow. Defaults to [Alignment.center].
///
/// ### Example:
/// ```dart
/// ArrowWidget(
///   width: 200,
///   height: 100,
///   color: Colors.red,
///   text: "Go!",
///   textStyle: TextStyle(fontSize: 20, color: Colors.white),
///   alignment: Alignment.center,
/// )
/// ```
class ArrowShapeWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry padding;
  final Alignment alignment;

  const ArrowShapeWidget({
    Key? key,
    this.width = 100,
    this.height = 50,
    this.color = Colors.blue,
    this.text = '',
    this.textStyle,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _ArrowPainter(color: color),
      child: Container(
        width: width,
        height: height,
        alignment: alignment,
        padding: padding,
        child: Text(
          text,
          style: textStyle ?? const TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _ArrowPainter extends CustomPainter {
  final Color color;

  _ArrowPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();

    // Define arrow body and head
    final arrowWidth = size.width;
    final arrowHeight = size.height;
    final arrowHeadWidth = arrowHeight / 1.5; // Width of the arrowhead

    // Start at the bottom-left of the arrow tail
    path.moveTo(0, arrowHeight / 4.5); // Left side of the arrow body
    path.lineTo(arrowWidth - arrowHeadWidth,
        arrowHeight / 4.5); // Right before the arrowhead
    path.lineTo(arrowWidth - arrowHeadWidth, 0); // Top of the arrowhead
    path.lineTo(arrowWidth, arrowHeight / 2); // Tip of the arrowhead
    path.lineTo(
        arrowWidth - arrowHeadWidth, arrowHeight); // Bottom of the arrowhead
    path.lineTo(arrowWidth - arrowHeadWidth,
        4 * arrowHeight / 5); // Back to the arrow body
    path.lineTo(0, 4 * arrowHeight / 5); // Bottom-left of the arrow tail
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
