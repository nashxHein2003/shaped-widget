import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shaped_widget/shaped_widget.dart';

void main() {
  testWidgets('Heart Shape has correctly rendered',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HeartShapeWidget(
            color: Colors.grey,
            size: 20.0,
            padding: EdgeInsets.all(8.0),
            text: 'Heart Shape',
          ),
        ),
      ),
    );

    final heartShapeFinder = find.byType(HeartShapeWidget);

    expect(heartShapeFinder, findsOneWidget);

    final heartShapeWidget = tester.widget<HeartShapeWidget>(heartShapeFinder);
    expect(heartShapeWidget.size, 20.0);
    expect(heartShapeWidget.color, Colors.grey);
    expect(heartShapeWidget.padding, const EdgeInsets.all(8.0));
    expect(heartShapeWidget.text, 'Heart Shape');
  });
}
