import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messenger/business_logic/cubit/App_cubit.dart';
import 'package:messenger/business_logic/cubit/auth/auth_cubit.dart';
import 'package:messenger/observer_block.dart';
import 'package:messenger/presentation/auth/register/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  runApp(
    ScreenUtilInit(
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit(),
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit(),
            ),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Register(),
          ),
        );
      },
    ),
  );
}
