import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../circle_avatar.dart';

class CustomListTile extends StatelessWidget {
  String imageFriend, userName, lastMessage, date, isRead;

  CustomListTile({
    super.key,
    required this.imageFriend,
    required this.userName,
    required this.date,
    required this.lastMessage,
    required this.isRead,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImgAvt(
        imageFriend,
      ),
      title: Text(userName),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(lastMessage),
          Text(date),
        ],
      ),
      trailing: ImgAvt(
        isRead,
        radius: 10,
      ),
      onTap: () {
        Get.toNamed("/chatView", arguments: [
          {
            "nameUser": userName,
            "imageUser": imageFriend,
            "isRead": isRead,
          }
        ]);
      },
    );
  }
}
