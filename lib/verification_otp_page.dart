import 'package:flutter/material.dart';
import 'package:phone_auth/phone_auth_service.dart';

import 'home_page.dart';

class VerificationOtpPage extends StatefulWidget {
  const VerificationOtpPage({super.key});

  @override
  State<VerificationOtpPage> createState() => _VerificationOtpPageState();
}

class _VerificationOtpPageState extends State<VerificationOtpPage> {
  late var _authatication = PhoneAuthService();
  var otpNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: otpNumber,
                maxLength: 8,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue,),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.password),
                    hintText: "Enter Phone Number",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink)),
                onPressed: () {
                  if(otpNumber.text.isNotEmpty){
                   _authatication.verifyOtp(otpNumber: otpNumber.text.toString(), context: context);
                  }else{
                    print("fill in blanks");
                  }

                }, child: Text("Submet",style: TextStyle(fontSize: 20,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
