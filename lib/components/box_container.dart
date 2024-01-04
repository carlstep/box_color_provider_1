// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:box_color_provider_1/const.dart';

class MyBoxContainer extends StatefulWidget {
  final Widget icon;
  final String boxContainerIndex;
  void Function()? onPressed;

  MyBoxContainer({
    Key? key,
    required this.icon,
    required this.boxContainerIndex,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<MyBoxContainer> createState() => _MyBoxContainerState();
}

class _MyBoxContainerState extends State<MyBoxContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 80,
      width: 300,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.boxContainerIndex,
            ),
            SizedBox(
              width: 40,
            ),
            IconButton(
              icon: widget.icon,
              iconSize: 30,
              color: iconColor,
              onPressed: widget.onPressed,
            )
          ],
        ),
      ),
    );
  }
}
