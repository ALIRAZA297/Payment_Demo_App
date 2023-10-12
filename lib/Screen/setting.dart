import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const routeName = "/setting";
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
            "Setting",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Money Receive",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text("If anyone sent you money",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      trailing: Container(
                        height: 27,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.grey),
                          color: const Color(0xff6C8FF8),
                        ),
                        child: Switch(
                            value: true,
                            activeTrackColor: const Color(0xff6C8FF8),
                            thumbColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            onChanged: (_) {}),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 1,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.15,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Card Activation",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text("If card active",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      trailing: Container(
                        height: 27,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.grey),
                          color: const Color(0xff6C8FF8),
                        ),
                        child: Switch(
                            value: true,
                            activeTrackColor: const Color(0xff6C8FF8),
                            thumbColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            onChanged: (_) {}),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 1,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.18,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Update Feature",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text("If any new update come",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      trailing: Container(
                        height: 27,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.grey.shade300),
                          color: const Color(0xffE6E6E6),
                        ),
                        child: Switch(
                            value: false,
                            inactiveTrackColor: const Color(0xffE6E6E6),
                            thumbColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            onChanged: (_) {}),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 1,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.15,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Money Trasfer",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text("If you sent money to somone",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      trailing: Container(
                        height: 27,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.grey.shade300),
                          color: const Color(0xffE6E6E6),
                        ),
                        child: Switch(
                            value: false,
                            inactiveTrackColor: const Color(0xffE6E6E6),
                            thumbColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            onChanged: (_) {}),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 100,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.15,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Lock Screen",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 100,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.1,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Money Request",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text("If anyone sent you money request",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      trailing: Container(
                        height: 27,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.grey),
                          color: const Color(0xff6C8FF8),
                        ),
                        child: Switch(
                            value: true,
                            activeTrackColor: const Color(0xff6C8FF8),
                            thumbColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            onChanged: (_) {}),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 100,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.15,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Email Notification",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text("Send notification to your email",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                      trailing: Container(
                        height: 27,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.grey.shade300),
                          color: const Color(0xffE6E6E6),
                        ),
                        child: Switch(
                            value: false,
                            inactiveTrackColor: const Color(0xffE6E6E6),
                            thumbColor: const MaterialStatePropertyAll(
                              Colors.white,
                            ),
                            onChanged: (_) {}),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 400,
                    child: Divider(
                      height: 100,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.15,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "About",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right_sharp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
