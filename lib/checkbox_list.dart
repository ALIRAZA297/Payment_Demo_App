import 'package:flutter/material.dart';
import 'package:flutter_application_05/Screen/send_money.dart';

class CheckboxListTile1 extends StatefulWidget {
  static const routeName = "/checkbox_list";
  const CheckboxListTile1({super.key});

  @override
  State<CheckboxListTile1> createState() => _CheckboxListTile1State();
}

class _CheckboxListTile1State extends State<CheckboxListTile1> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.platform,
            checkboxShape: const CircleBorder(),
            value: checkboxValue1,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue1 = value!;
                Navigator.of(context).pushNamed(SendMoney.routeName);
              });
            },
            title: const Text(
              "Ann-Marita",
              style: TextStyle(
                color: Color(0xFF616E7C),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text(
              "+862348962",
              style: TextStyle(
                color: Color(0xFFAAAAAA),
              ),
            ),
            secondary: Image.asset("assets/images/p1.png"),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.platform,
            checkboxShape: const CircleBorder(),
            value: checkboxValue2,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue2 = value!;
              });
            },
            title: const Text(
              "Alvin Ailey",
              style: TextStyle(
                color: Color(0xFF616E7C),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text(
              "+862348962",
              style: TextStyle(
                color: Color(0xFFAAAAAA),
              ),
            ),
            secondary: Image.asset("assets/images/p2.png"),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.platform,
            checkboxShape: const CircleBorder(),
            value: checkboxValue3,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue3 = value!;
              });
            },
            title: const Text(
              "Arthur Dorrance",
              style: TextStyle(
                color: Color(0xFF616E7C),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text(
              "+862348962",
              style: TextStyle(
                color: Color(0xFFAAAAAA),
              ),
            ),
            secondary: Image.asset("assets/images/p3.png"),
          ),
        ],
      ),
    );
  }
}


