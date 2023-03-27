import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/view/chat_view.dart';
import 'package:messenger/view/home_chats.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'middelware/authMiddelware.dart';
import 'view/sub_datails_page.dart';

late SharedPreferences sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/controlView",
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomeChats(),
        ),
        GetPage(
          name: "/chatView",
          page: () => ChatView(),
        ),
        GetPage(
          name: "/subDetail",
          page: () => SubDetail(),
        ),
        GetPage(
          name: "/controlView",
          page: () => ControlViewMessenger(),
        ),
      ],
    ),
  );
}
