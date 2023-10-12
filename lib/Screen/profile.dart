import 'package:flutter/material.dart';
import 'package:flutter_application_05/Screen/setting.dart';
import 'link_now.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //bottomNavigationBar: const MyBottomNavigationBar(),
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
            "Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage("assets/images/pen.png")),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 110),
              child: SizedBox(
                height: 120,
                width: 270,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 76,
                      width: 76,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        image: DecorationImage(
                            image: AssetImage("assets/images/A.jfif"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0, left: 10),
                          child: Text(
                            "Michael Samuel",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40.0, top: 10),
                          child: Text(
                            "+254987635",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFAAAAAA)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account Settings",
                  style: TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Column(
                children: [
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Cards",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      leading: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xffD6FAFF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/cards.png'),
                          color: Color(0xff33B4C6),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(LinkNow.routeName);
                        },
                        icon: const Icon(Icons.keyboard_arrow_right_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                    width: 400,
                    child: Divider(
                      height: 1,
                      color: Color(0xFF071529),
                      endIndent: 30,
                      indent: 15,
                      thickness: 0.34,
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white10,
                    child: ListTile(
                      title: const Text(
                        "Statistic",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      leading: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xffFCE9D7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/stat.png'),
                          color: Color(
                            0xffB88453,
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
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
                        "Settings",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      leading: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFF3C5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/seting.png'),
                          color: Color(
                            0xffCAA000,
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Settings.routeName);
                        },
                        icon: const Icon(Icons.keyboard_arrow_right_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                    width: 400,
                    child: Divider(
                      height: 1,
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
                        "Activit History",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      leading: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFEAED),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/acthis.png'),
                          color: Color(
                            0xffA7525E,
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
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
                        "Log Out",
                        style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      leading: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xffD7ECFF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/logout.png'),
                          color: Color(
                            0xff387EBF,
                          ),
                        ),
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
