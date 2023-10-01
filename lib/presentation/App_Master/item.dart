import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../business_logic/cubit/app_cubit/App_cubit.dart';
import '../../business_logic/cubit/app_cubit/App_states.dart';

buildCustomAppBar({
  required String text,
  IconData? iconData,
  void Function()? iconTap,
}) {
  return AppBar(
    titleTextStyle: const TextStyle(
      fontSize: 23,
      color: Colors.black,
    ),
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.black87,
    ),
    title: Text(text),
    actions: [
      buildCustomAvatar(iconData: iconData, onTap: iconTap),
    ],
  );
}

buildCustomAvatar({IconData? iconData, void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.indigo,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget bottomNavigationBar({required BuildContext context}) {
  AppCubit cubit = AppCubit.get(context);
  return BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
    return CurvedNavigationBar(
      backgroundColor: Colors.indigo,
      height: 50.h,
      index: cubit.navigatorValue,
      items: const [
        Icon(
          Icons.chat,
          size: 30,
        ),
        Icon(
          Icons.call,
          size: 30,
        ),
        Icon(
          Icons.photo_album,
          size: 30,
        ),
      ],
      onTap: (index) {
        cubit.changeSelectedValue(index);
      },
    );
  });
}
