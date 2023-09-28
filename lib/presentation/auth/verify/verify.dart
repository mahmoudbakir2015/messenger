import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/business_logic/cubit/auth/auth_cubit.dart';
import 'package:messenger/business_logic/cubit/auth/auth_states.dart';
import 'package:messenger/constant/constant.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: authCubit.smsCode,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter SMS Code',
                    ),
                    onChanged: (value) {
                      // Store the SMS code input
                    },
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () async {
                      await authCubit.verifySmsCode(
                        smsCode: authCubit.smsCode.text,
                        context: context,
                      );
                      // Call _verifySmsCode to verify the SMS code
                    },
                    child: const Text('Verify SMS Code'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
