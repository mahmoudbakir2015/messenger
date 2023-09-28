import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widget/custom_circle_avatar.dart';

buildCallCard({
  required String userImage,
  required String userName,
  required String status,
  required String dateTime,
  void Function()? onTap,
}) {
  return ListTile(
    leading: ImgAvt(
      userImage,
    ),
    title: Text(userName),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(status),
        Text(dateTime),
      ],
    ),
    trailing: CircleAvatar(
      backgroundColor: Colors.indigo,
      radius: 10,
      child: Icon(
        Icons.call,
        size: 15.w,
      ),
    ),
    onTap: onTap,
  );
}
