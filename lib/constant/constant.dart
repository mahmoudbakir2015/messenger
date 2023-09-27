import 'package:flutter/material.dart';

import '../font_manager.dart';


const String userImage =
    'https://th.bing.com/th/id/OIP.mEma0ZcipymPAHIYoIuFiAHaJa?pid=ImgDet&rs=1';

abstract class Margin {
  static double borderRadius = 10;
}

abstract class PaddingApp {
  static double appPadding = 10;
}

abstract class ColorApp {
  static Color primaryColor = const Color(0xff5956E0);
  static Color lightColor = const Color(0xff999999);
  static Color rightStatusColor = const Color(0xff17CF54);
  static Color errorStatusColor = Colors.red;
}

abstract class MyTextStyle {
  static TextStyle tR8 = TextStyle(
    fontSize: FontSizes.s8,
    fontWeight: FontWeightManager.regular,
    color: const Color(0xff666666),
  );
  static TextStyle tM8 = TextStyle(
    fontSize: FontSizes.s8,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tM10 = TextStyle(
    color: ColorApp.lightColor,
    fontSize: FontSizes.s10,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tR10 = TextStyle(
    color: ColorApp.lightColor,
    fontSize: FontSizes.s10,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle tSB10 = TextStyle(
    color: ColorApp.lightColor,
    fontSize: FontSizes.s10,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tR12 = TextStyle(
    color: ColorApp.lightColor,
    fontSize: FontSizes.s12,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle tM12 = TextStyle(
    color: ColorApp.lightColor,
    fontSize: FontSizes.s12,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tSB12 = TextStyle(
    fontSize: FontSizes.s12,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tL14 = TextStyle(
    height: 1.2,
    fontSize: FontSizes.s14,
    fontWeight: FontWeightManager.light,
    color: ColorApp.lightColor,
  );
  static TextStyle tR14 = TextStyle(
    fontSize: FontSizes.s14,
    fontWeight: FontWeightManager.regular,
    color: ColorApp.lightColor,
  );
  static TextStyle tM14 = TextStyle(
    fontSize: FontSizes.s14,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tB14 = TextStyle(
    color: ColorApp.primaryColor,
    fontSize: FontSizes.s14,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle tSB14 = TextStyle(
    fontSize: FontSizes.s14,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tR16 = TextStyle(
    fontSize: FontSizes.s16,
    fontWeight: FontWeightManager.regular,
    color: ColorApp.lightColor,
  );
  static TextStyle tM16 = TextStyle(
    fontSize: FontSizes.s16,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tSB16 = TextStyle(
    fontSize: FontSizes.s16,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tSB18 = TextStyle(
    fontSize: FontSizes.s18,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tM20 = TextStyle(
    fontSize: FontSizes.s20,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tSB20 = TextStyle(
    fontSize: FontSizes.s20,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tR24 = TextStyle(
    fontSize: FontSizes.s24,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle tM24 = TextStyle(
    fontSize: FontSizes.s24,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle tSB24 = TextStyle(
    fontSize: FontSizes.s24,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tSB32 = TextStyle(
    color: Colors.black,
    fontSize: FontSizes.s32,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle tSB40 = TextStyle(
    color: Colors.white,
    fontSize: FontSizes.s40,
    fontWeight: FontWeightManager.semiBold,
  );
}

const String driverImage =
    'https://p0.pikist.com/photos/595/36/smiling-boy-man-professional-happy-people-young-portrait-cute.jpg';

/*
// static TextStyle tL12 = TextStyle(
//   color: ColorApp.lightColor,
//   fontSize: FontSizes.s12,
//   fontWeight: FontWeightManager.light,
// );
// static TextStyle tM24 = TextStyle(
//   fontSize: FontSizes.s24,
//   fontWeight: FontWeightManager.medium,
// );

  // static TextStyle tB28 = TextStyle(
  //   fontSize: FontSizes.s28,
  //   fontWeight: FontWeightManager.bold,
  // );
  // static TextStyle tB32 = TextStyle(
  //   fontSize: FontSizes.s32,
  //   fontWeight: FontWeightManager.bold,
  // );
  // static TextStyle tB40 = TextStyle(
  //   fontSize: FontSizes.s40,
  //   fontWeight: FontWeightManager.bold,
  // );
  // static TextStyle tB8 = TextStyle(
  //   fontSize: FontSizes.s8,
  //   fontWeight: FontWeightManager.bold,
  // );
 */
