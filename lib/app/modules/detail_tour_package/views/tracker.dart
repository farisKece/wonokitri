import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/event_card.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/time_card.dart';

class Tracker extends StatelessWidget {
  const Tracker({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
    required this.timeCard,
  });

  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  final timeCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.2,
        endChild: EventCard(child: eventCard),
        startChild: TimeCard(child: timeCard,),
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: isPast ? const Color(0xFf8BC342) : const Color(0xFFC4C4C4),
        ),
        indicatorStyle: IndicatorStyle(
          width: 28,
          color: isPast ? const Color(0xFf8BC342) : const Color(0xFFC4C4C4),
          iconStyle: IconStyle(
            iconData: Icons.location_on,
            color: isPast ? Colors.white : const Color(0xFFC4C4C4),
          ),
        ),
      ),
    );
  }
}


