import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/cubit/phone_auth/phone_auth_cubit.dart';
import '../verify/item.dart';
import 'item.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: BlocProvider.of<PhoneAuthCubit>(context).formKey,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildIntroTextsLogin(),
                  const SizedBox(
                    height: 110,
                  ),
                  buildPhoneFormField(context: context),
                  const SizedBox(
                    height: 70,
                  ),
                  buildNextButton(context),
                  buildPhoneNumberSubmitedBloc(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
