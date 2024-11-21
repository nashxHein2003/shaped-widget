import 'package:flutter/material.dart';
import 'package:shaped_widget_package/shaped_widgets/shaped_widgets.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Shaped Widget Example Usage',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        leadingWidth: MediaQuery.sizeOf(context).width,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('Star Widget'),
                Spacer(),
                Star(
                  color: Colors.red,
                  numPoints: 5,
                  size: 30,
                ),
              ],
            ),
            const Row(
              children: [
                Text('DashLine Widget'),
                Spacer(),
                DashLine(
                  color: Colors.red,
                  dashGap: 2,
                  dashLength: 2,
                  thickness: 1,
                ),
              ],
            ),
            const Row(
              children: [
                Text('Single Dot Widget'),
                Spacer(),
                SingleDot(
                  color: Colors.red,
                  size: 30,
                )
              ],
            ),
            Row(
              children: [
                const Text('Triangle Widget'),
                const Spacer(),
                Triangle(
                  color: Colors.red,
                  size: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
