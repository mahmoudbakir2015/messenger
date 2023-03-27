import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/circle_avatar.dart';
import '../view/widgets/custom_list_drawer.dart';
import '../view_model/screen_view_model.dart';

class ControlViewMessenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScreenViewModel>(
      init: ScreenViewModel(),
      builder: (controller) => Scaffold(
        appBar: appBar(
          controller.navigatorValue,
        ),
        drawer: drawer(),
        bottomNavigationBar: bottomNavigationBar(),
        body: controller.currentScreen,
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ScreenViewModel>(
      init: ScreenViewModel(),
      builder: (controller) => CurvedNavigationBar(
        index: controller.navigatorValue,
        items: [
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
          controller.changeSelectedValue(index);
        },
      ),
    );
  }

  AppBar appBar(int controller) {
    if (controller == 0) {
      return AppBar(
        title: Text("الدردشات"),
        actions: [
          InkWell(
            child: CircleAvatar(
              child: Icon(
                Icons.camera_alt,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            child: CircleAvatar(
              child: Icon(
                Icons.edit,
              ),
            ),
            onTap: () {},
          ),
        ],
      );
    } else if (controller == 1) {
      return AppBar(
        title: Text("المكالمات"),
        actions: [
          InkWell(
            child: CircleAvatar(
              child: Icon(
                Icons.call,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            child: CircleAvatar(
              child: Icon(
                Icons.video_call,
              ),
            ),
            onTap: () {},
          ),
        ],
      );
    } else {
      return AppBar(
        title: Text(
          "Stories",
        ),
        actions: [
          InkWell(
            child: CircleAvatar(
              child: Icon(
                Icons.people_alt_outlined,
              ),
            ),
            onTap: () {},
          ),
        ],
      );
    }
  }

  Drawer drawer() {
    return Drawer(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: ImgAvt(
                  "images/user.jpg",
                  radius: 20,
                ),
                title: Row(
                  children: [
                    Text("my name"),
                    Icon(
                      Icons.arrow_downward,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.settings,
                ),
                onTap: () {
                  Get.toNamed("/changePages");
                },
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: ((context, int i) => GestureDetector(
                        child: CustomListDrawer(
                          title: 'الدردشات',
                        ),
                        onTap: () {},
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("المجتمعات"),
                  GestureDetector(
                    child: Text(
                      "تعديل",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: ((context, int i) => GestureDetector(
                        child: CustomListDrawer(
                          title: 'الدردشات',
                        ),
                        onTap: () {},
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
