import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'circle_avatar.dart';
import 'widgets/custom_list_tile.dart';

class HomeChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              width: Get.width,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "search",
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            height: _mediaQuery.size.height * 0.13,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, int i) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          ImgAvt("images/user.jpg"),
                          Text(
                            "Mahmoudbakir",
                            textScaleFactor: 0.8,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, int i) {
              return CustomListTile(
                imageFriend: 'images/user.jpg',
                userName: 'mahmoudbakir',
                date: '21/1/2022',
                lastMessage: 'hello world',
                isRead: 'images/user.jpg',
              );
            },
          ),
        ],
      ),
    );
  }
}
