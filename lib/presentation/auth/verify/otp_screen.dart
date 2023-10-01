import 'package:flutter/material.dart';
import 'item.dart';

// ignore: must_be_immutable010
class OtpScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final phoneNumber;
  const OtpScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 88,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildIntroTextsVerify(
                  phoneNumber: phoneNumber,
                ),
                const SizedBox(
                  height: 88,
                ),
                buildPinCodeFields(context),
                const SizedBox(
                  height: 60,
                ),
                buildVerifyButton(context),
                buildPhoneVerificationBloc(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
