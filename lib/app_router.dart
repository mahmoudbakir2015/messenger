import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/business_logic/cubit/app_cubit/App_cubit.dart';
import 'package:messenger/presentation/App_Master/App_Master.dart';
import 'package:messenger/presentation/auth/login/login_screen.dart';
import 'package:messenger/presentation/auth/verify/otp_screen.dart';
import 'business_logic/cubit/phone_auth/phone_auth_cubit.dart';
import 'constnats/strings.dart';

class AppRouter {
  PhoneAuthCubit? phoneAuthCubit;

  AppRouter() {
    phoneAuthCubit = PhoneAuthCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case appMaster:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => AppCubit(),
            child: const AppMaster(),
          ),
        );

      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: LoginScreen(),
          ),
        );

      case otpScreen:
        final phoneNumber = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: OtpScreen(phoneNumber: phoneNumber),
          ),
        );
    }
  }
}
