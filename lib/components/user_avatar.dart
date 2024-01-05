import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.filename,
    required this.border,
  });

  final String filename;
  final bool border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: border ? Border.all(color: Colors.black) : null,
          shape: BoxShape.circle),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage('assets/$filename'),
      ),
    );
  }
}
