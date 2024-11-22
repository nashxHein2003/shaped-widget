import 'package:example/common/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:shaped_widget/shaped_widget.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            shapeWidgetExampleUsage,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        leadingWidth: MediaQuery.sizeOf(context).width,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ExampleWidgetListTile(
            title: starWidget,
            child: Star(
              color: Colors.grey,
              numPoints: 5,
              size: 30,
            ),
          ),
          const ExampleWidgetListTile(
            title: dashLineWidget,
            child: DashLine(
              color: Colors.grey,
              dashGap: 2,
              dashLength: 5,
              thickness: 2,
              length: 100,
            ),
          ),
          const ExampleWidgetListTile(
            title: singleDotWidget,
            child: SingleDot(
              color: Colors.grey,
              size: 30,
            ),
          ),
          ExampleWidgetListTile(
            title: triangleWidget,
            child: Triangle(
              color: Colors.grey,
              size: 30,
            ),
          ),
          const ExampleWidgetListTile(
            title: arrowShapeWidget,
            child: ArrowShapeWidget(
              color: Colors.grey,
              height: 30,
              width: 30,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
            ),
          ),
          const ExampleWidgetListTile(
              title: heartShapeWidget,
              child: HeartShapeWidget(
                color: Colors.grey,
                size: 30,
              ))
        ],
      ),
    );
  }
}

class ExampleWidgetListTile extends StatelessWidget {
  final String title;
  final Widget child;
  const ExampleWidgetListTile({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Spacer(),
          child,
        ],
      ),
    );
  }
}
