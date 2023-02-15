import 'package:banking_clone/widget/tile/event_tile.dart';
import 'package:flutter/material.dart';

class EventTileRow extends StatelessWidget {
  final IconData firstIcon;
  final String firstText;
  final IconData secondIcon;
  final String secondText;
  const EventTileRow({
    super.key,
    required this.firstIcon,
    required this.firstText,
    required this.secondIcon,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: EventTile(
              icon: firstIcon,
              text: firstText,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: EventTile(
              icon: secondIcon,
              text: secondText,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
