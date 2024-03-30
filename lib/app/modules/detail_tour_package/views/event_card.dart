import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    this.child,
  });

  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: child,
    );
  }
}
