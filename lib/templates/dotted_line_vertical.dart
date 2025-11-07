import 'package:flutter/material.dart';

class VerticalDottedLine extends StatelessWidget {
  final double containerHeight;
  final double dotHeight;
  final double dotMargin;

  const VerticalDottedLine({
    super.key,
    this.containerHeight = 100.0,
    this.dotHeight = 3.0,
    this.dotMargin = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: containerHeight,
      child: LayoutBuilder(
        builder: (context, constraints) {
          int dotsCount =
              (constraints.maxHeight / (dotHeight + dotMargin)).floor();

          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(dotsCount, (index) {
              return Container(
                width: 1,
                height: dotHeight,
                margin: EdgeInsets.symmetric(vertical: dotMargin / 2),
                decoration: const BoxDecoration(
                  color: Color(0xffc4c4c4),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
