import 'package:flutter/material.dart';

class CircleInfoWidget extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? subTitle;
  final double radius;
  final Color color;
  const CircleInfoWidget(
      {super.key,
      required this.child,
      this.title,
      this.subTitle,
      required this.radius,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2 * radius,
          width: 2 * radius,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: color,
          ),
          child: Center(child: child),
        ),
        if (title != null)
          Text(
            title!,
            style: TextStyle(fontSize: 20),
          ),
        if (subTitle != null) Text(subTitle!),
      ],
    );
  }
}
