import 'package:flutter/material.dart';
import 'package:flutter_application_05/main.dart';

class PaymentSuccessfull extends StatefulWidget {
  static const roteName = '/payment_successful';
  const PaymentSuccessfull({super.key});

  @override
  State<PaymentSuccessfull> createState() => _PaymentSuccessfullState();
}

class _PaymentSuccessfullState extends State<PaymentSuccessfull> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height:250,
            ),
            const Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: CircleAvatar(
                  maxRadius: 35,
                  backgroundColor: Color(0xFF6C8FF8),
                  child: Icon(Icons.check_sharp, size: 55, color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Payment Successfull!",
                style: TextStyle(
                  color: Color(0xFF616E7C),
                  fontSize: 20,
                ),
              ),
            ),
            const Text(
              "Thank you for your paying quickly! \n Payment information was sent to your email.",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffAAAAAA)),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xFF6C8FF8)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(366, 60),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.routeName);
                },
                child: const Text(
                  "Back To Home",
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
