import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'circle_avatar.dart';

class CallsPage extends StatelessWidget {
  String name = "mahmoudbakir";
  String img = "images/user.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
            ),
            child: Row(
              children: [
                Text(
                  "الاحدث",
                  style: TextStyle(),
                )
              ],
            ),
          ),
          Container(
            height: 490,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, int i) {
                return ListTile(
                  leading: ImgAvt(
                    img,
                  ),
                  title: Text(name),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("لم يتم الرد عليها "),
                      Text("20/3/2022"),
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 10,
                    child: Icon(Icons.call),
                  ),
                  onTap: () {
                    Get.toNamed("/subDetail", arguments: [
                      {
                        "image": img,
                        "name": name,
                      },
                    ]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
