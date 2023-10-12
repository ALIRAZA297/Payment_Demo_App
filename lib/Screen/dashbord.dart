import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_05/selected_underline.dart';

class Dashbord extends StatefulWidget {
  static const routeName = "/dashbord";
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          //bottomNavigationBar: const MyBottomNavigationBar(),
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.black,
              ),
            ],
            backgroundColor: Colors.white10,
            elevation: 0,
            title: const Text(
              "Dashboard",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 10,
                        )
                      ],
                    ),
                    height: 420,
                    width: 350,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: PieChart(
                                    PieChartData(
                                      sections: [
                                        PieChartSectionData(
                                          value: 38,
                                          color: const Color(0xff6C8FF8),
                                          title: '38%',
                                          titleStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                          radius: 40,
                                        ),
                                        PieChartSectionData(
                                          value: 30,
                                          color: const Color(0xff334154),
                                          title: '30%',
                                          titleStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                          radius: 40,
                                        ),
                                        PieChartSectionData(
                                          value: 32,
                                          color: const Color(0xffFFC725),
                                          title: '32%',
                                          titleStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                          radius: 40,
                                        ),
                                      ],
                                      borderData: FlBorderData(show: false),
                                      centerSpaceRadius: 60,
                                      sectionsSpace: 0,
                                      centerSpaceColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Positioned(
                          top: 250,
                          left: 134,
                          child: Text(
                            "\$978.85",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 280,
                          left: 115,
                          child: Text(
                            "Available Balance",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 320,
                          left: 160,
                          child: Text(
                            "Spend",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 320,
                          left: 250,
                          child: Text(
                            "Available",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            "Earning",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 350,
                          left: 45,
                          child: Text(
                            "1582.67",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff6C8FF8),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 350,
                          left: 155,
                          child: Text(
                            "595.11",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFC725),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 350,
                          left: 255,
                          child: Text(
                            "978.85",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      top: 25,
                    ),
                    child: Text(
                      "Unpaid Bill",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.height,
                    child: const ButtonList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
