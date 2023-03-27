import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'circle_avatar.dart';

class ChangePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تبديل الحساب",
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: ((context, int i) => ListTile(
                  leading: ImgAvt(""),
                  title: Text(
                    "Name",
                  ),
                  subtitle: Text(
                    "تم التسجيل الدخول",
                  ),
                  onTap: () {},
                )),
          ),
          Positioned(
            bottom: 5,
            child: Container(
              width: Get.width,
              child: ElevatedButton(
                child: Text(
                  "انشاء حساب جديد",
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
