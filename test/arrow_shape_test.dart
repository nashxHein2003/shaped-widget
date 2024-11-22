import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shaped_widget/shaped_widget.dart';

void main() {
  testWidgets('Arrow Shape has correctly rendered',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ArrowShapeWidget(
            color: Colors.grey,
            height: 30.0,
            width: 50.0,
            padding: EdgeInsets.all(8.0),
            text: 'Arrow Shape',
          ),
        ),
      ),
    );

    final arrowShapeFinder = find.byType(ArrowShapeWidget);

    expect(arrowShapeFinder, findsOneWidget);

    final heartShapeWidget = tester.widget<ArrowShapeWidget>(arrowShapeFinder);
    expect(heartShapeWidget.height, 30.0);
    expect(heartShapeWidget.width, 50.0);
    expect(heartShapeWidget.color, Colors.grey);
    expect(heartShapeWidget.padding, const EdgeInsets.all(8.0));
    expect(heartShapeWidget.text, 'Arrow Shape');
  });
}
