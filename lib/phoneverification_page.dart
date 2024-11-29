import 'package:flutter/material.dart';
import 'package:phone_auth/phone_auth_service.dart';
import 'package:phone_auth/verification_otp_page.dart';

class PhoneverificationPage extends StatefulWidget {
  const PhoneverificationPage({super.key});

  @override
  State<PhoneverificationPage> createState() => _PhoneverificationPageState();
}

class _PhoneverificationPageState extends State<PhoneverificationPage> {
  late final _authentication = PhoneAuthService();
  var number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: number,
                maxLength: 12,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    hintText: "Enter Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.pink)),
                onPressed: () async {
                  if (number.text.isNotEmpty) {
                    await _authentication.phoneAuthentication(
                        phoneNumbers: number.text.toString(), context: context);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationOtpPage()),
                      (route) => false,
                    );
                  } else {
                    print("fill in blanks");
                  }
                },
                child: Text(
                  "VerifyPhone",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
