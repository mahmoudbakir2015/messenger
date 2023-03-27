import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'circle_avatar.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ImgAvt(
              "${Get.arguments[0]["imageUser"]}",
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "${Get.arguments[0]["nameUser"]}",
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: InkWell(
              child: Icon(
                Icons.call,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: InkWell(
              child: Icon(
                Icons.call,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: InkWell(
              child: Icon(
                Icons.call,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment:
                            (Get.arguments[0]["currentUser"] == true)
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                        children: [
                          ImgAvt(
                            "${Get.arguments[0]["imageUser"]}",
                            radius: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Container(
                              width: 350,
                              alignment: Alignment.topLeft,
                              decoration:
                                  (Get.arguments[0]["currentUser"] == true)
                                      ? BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                              child: Align(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "gfghfhffhfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh",
                                    textDirection: TextDirection.rtl,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Container(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.list),
                  Icon(Icons.list),
                  Icon(Icons.list),
                  Icon(Icons.list),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 200,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.add_reaction,
                        ),
                        prefixIcon: Icon(
                          Icons.abc,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.list),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
