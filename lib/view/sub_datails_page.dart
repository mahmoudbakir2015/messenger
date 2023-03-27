import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'circle_avatar.dart';


class SubDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            child: Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImgAvt("${Get.arguments[0]["image"]}"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${Get.arguments[0]["name"]}"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.call,
                    ),
                    radius: 10,
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.call,
                    ),
                    radius: 10,
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.call,
                    ),
                    radius: 10,
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.call,
                    ),
                    radius: 10,
                  ),
                ],
              ),
            ),
            Text("اجراءات إضافية"),
            ListTile(
              title: Text(
                "رسالة",
              ),
              trailing: CircleAvatar(
                child: Center(
                  child: Icon(
                    Icons.chat,
                  ),
                ),
                radius: 15,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "رسالة",
              ),
              trailing: CircleAvatar(
                child: Center(
                  child: Icon(
                    Icons.chat,
                  ),
                ),
                radius: 15,
              ),
              onTap: () {},
            ),
            Text(
              "الخصوصية والدعم",
            ),
            ListTile(
              title: Text(
                "رسالة",
              ),
              trailing: CircleAvatar(
                child: Center(
                  child: Icon(
                    Icons.chat,
                  ),
                ),
                radius: 15,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "رسالة",
              ),
              trailing: CircleAvatar(
                child: Center(
                  child: Icon(
                    Icons.chat,
                  ),
                ),
                radius: 15,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "رسالة",
              ),
              trailing: CircleAvatar(
                child: Center(
                  child: Icon(
                    Icons.chat,
                  ),
                ),
                radius: 15,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
