import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({
    super.key,
    required this.child,
  });

  final child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: child,
    );
  }
}
