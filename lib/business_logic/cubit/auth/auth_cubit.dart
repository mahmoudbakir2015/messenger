import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/business_logic/cubit/auth/auth_states.dart';
import 'package:messenger/presentation/App_Master/App_Master.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit()
      : super(
          InitialAuthStates(),
        );

  static AuthCubit get(context) => BlocProvider.of(context);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController phoneNumber = TextEditingController();

  TextEditingController smsCode = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? verificationId;

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
  }) async {
    verificationCompleted(AuthCredential credential) async {
      await _auth.signInWithCredential(credential);
      print('Phone number automatically verified and user signed in');
    }

    verificationFailed(FirebaseAuthException authException) {
      print('Phone verification failed: ${authException.message}');
    }

    codeSent(String verificationId, [int? forceResendingToken]) async {
      this.verificationId = verificationId;
      print('Verification code sent to your phone');
    }

    codeAutoRetrievalTimeout(String verificationId) {
      this.verificationId = verificationId;
    }

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+2$phoneNumber', // Replace with the user's phone number
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      );
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> verifySmsCode({
    required String smsCode,
    required BuildContext context,
  }) async {
    final AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId!,
      smsCode: smsCode,
    );

    try {
      await _auth.signInWithCredential(credential);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const AppMaster()));
    } catch (e) {
      print('Error: $e');
    }
  }
}
