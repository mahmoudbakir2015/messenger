import 'package:flutter/material.dart';

class ImgAvt extends StatelessWidget {
  String? img;
  double? radius;
  ImgAvt(
    this.img, {
    this.radius = 35,
  });
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(
        img!,
      ),
    );
  }
}
