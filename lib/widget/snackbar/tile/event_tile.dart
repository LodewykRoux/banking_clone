import 'package:flutter/material.dart';

class EventTile extends Container {
  EventTile(
      {required IconData icon,
      required String text,
      required Function() onPressed,
      Key? key})
      : super(
          key: key,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.blue,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        );
}
