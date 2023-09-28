import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messenger/business_logic/cubit/auth/auth_cubit.dart';
import 'package:messenger/business_logic/cubit/auth/auth_states.dart';
import 'package:messenger/constant/constant.dart';
import 'package:messenger/presentation/auth/verify/verify.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = AuthCubit();
    return BlocBuilder<AuthCubit, AuthStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Phone Authentication'),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(PaddingApp.appPadding),
              child: Form(
                key: authCubit.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              child: Text('+02'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (String? value) {
                              if (value == null) {
                                print('enter your number');
                              } else if (value.length < 11) {
                                print('enter your number == 11 number');
                              } else {
                                authCubit.phoneNumber.text = value;
                              }
                            },
                            controller: authCubit.phoneNumber,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.w),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () async {
                        if (authCubit.formKey.currentState!.validate()) {
                          await authCubit
                              .verifyPhoneNumber(
                                  phoneNumber: authCubit.phoneNumber.text)
                              .then((value) {
                            print(authCubit.phoneNumber.text);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Verify(),
                              ),
                            );
                          });
                        }
                      },
                      child: const Text('Send'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
