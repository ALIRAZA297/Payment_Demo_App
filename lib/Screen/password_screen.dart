import 'package:flutter/material.dart';
import 'package:flutter_application_05/Screen/payment_successfull.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class PasswordScreen extends StatefulWidget {
  static const routeName = "/password_screen";
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
          title: const Text(
            "Send Money",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: SizedBox(
                height: 110,
                width: MediaQuery.of(context).size.height,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter Password",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFF334154),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Text(
                      "Enter your account password and",
                      style: TextStyle(
                        color: Color(0xFF616E7C),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "send money to ann marita",
                      style: TextStyle(
                        color: Color(0xFF616E7C),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: PinInputTextField(
                pinLength: 4,
                decoration: BoxLooseDecoration(
                  radius: const Radius.circular(12),
                  strokeWidth: 0.9,
                  gapSpace: 34,
                  strokeColorBuilder: PinListenColorBuilder(
                    Colors.white,
                    Colors.grey,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xFF6C8FF8)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
                  minimumSize: const MaterialStatePropertyAll(Size(366, 60),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(PaymentSuccessfull.roteName);
                },
                child: const Text(
                  "Send",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
