import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black38,
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(text: "Upcoming"),
                  Tab(text: "Previous"),
                ],
              ),
              const SizedBox(
                  height: 10), 
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text(
                              "Dribble",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Waitting payment',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/dribble.png'),
                            ),
                            trailing: SizedBox(
                              height: 40,
                              width: 80,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Add border radius here
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xff6C8FF8), // Background color
                                  ),
                                ),
                                child: const Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text(
                              "Uplabs",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Payment Received',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/topup.png'),
                            ),
                            trailing: SizedBox(
                              height: 40,
                              width: 80,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), 
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xffF3F6FE), 
                                  ),
                                ),
                                child: const Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    color: Color(0xff616E7C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Second tab content
                    const Center(child: Text("upcomming content")),
                    // Third tab content
                    Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text(
                              "Amazon",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Waitting payment',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/amazon.png'),
                            ),
                            trailing: SizedBox(
                              height: 40,
                              width: 80,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Add border radius here
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xffF3F6FE), // Background color
                                  ),
                                ),
                                child: const Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text(
                              "Uplabs",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Payment Received',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/upwork.png'),
                            ),
                            trailing: SizedBox(
                              height: 40,
                              width: 80,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), 
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xffF3F6FE), 
                                  ),
                                ),
                                child: const Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ButtonList(),
  ));
}
