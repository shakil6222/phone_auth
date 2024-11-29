import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class PhoneAuthService {
  static var auth = FirebaseAuth.instance;
  static var verifyId = "";

  Future<bool> phoneAuthentication({required String phoneNumbers, required BuildContext context}) async {
    try {
      auth.verifyPhoneNumber(
        phoneNumber: "+91 $phoneNumbers",
        timeout: Duration(seconds: 40),
        verificationCompleted: (phoneAuthCredential) async {
          signingWithCredential(phoneAuthCredential, context);
        },
        verificationFailed: (error) {
          print("error ${error.message}");
        },
        codeSent: (verificationId, forceResendingToken) {
          verifyId = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {

        },
      );
      return true;
    } catch (e) {
      print("Signing With Wrong ${e}");
      return false;
    }
  }
  Future<UserCredential> signingWithCredential(AuthCredential credential, BuildContext context) async{
    var result = await auth.signInWithCredential(credential);
    if(result.user!=null){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()), (route) => false,);

    }
  return result;
  }
  Future<void> verifyOtp({required String otpNumber, required BuildContext context})async{
    var credential = PhoneAuthProvider.credential(
        verificationId: verifyId,
        smsCode: otpNumber);
    signingWithCredential(credential, context);

  }
}
