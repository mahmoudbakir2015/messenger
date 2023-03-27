import 'package:flutter/material.dart';

class CustomListDrawer extends StatelessWidget {
  String title;

  CustomListDrawer({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.chat,
      ),
      title: Text(
        title,
      ),
      trailing: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.green,
      ),
    );
  }
}
