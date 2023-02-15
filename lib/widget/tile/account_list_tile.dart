import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {
  final Color leadingColor;
  final IconData iconData;
  final Text title;
  const AccountListTile({
    super.key,
    required this.leadingColor,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  decoration: BoxDecoration(color: leadingColor),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(child: title),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
