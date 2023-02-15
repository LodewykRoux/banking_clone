import 'package:flutter/material.dart';

class IconButtonFooter extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  final String text;
  final Function() onTap;
  const IconButtonFooter({
    super.key,
    required this.iconData,
    required this.isSelected,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        highlightColor: Colors.transparent,
        child: Column(
          children: [
            Icon(
              iconData,
              color: isSelected ? Colors.blue : Colors.grey,
            ),
            Text(
              text,
              style: TextStyle(color: isSelected ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
