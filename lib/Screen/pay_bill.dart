import 'package:flutter/material.dart';

class Paybill extends StatefulWidget {
  static const routeName = "/pay_bill";
  const Paybill({super.key});

  @override
  State<Paybill> createState() => _PaybillState();
}

class _PaybillState extends State<Paybill> {
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
            "Pay Bill",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  height: 300,
                  width: 370,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 30),
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, mainAxisSpacing: 15.0),
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffe0f5fd),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 9,
                                      offset: const Offset(0, 9)),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/images/electric.png'),
                                  color: Color(
                                    0xff68c6e5,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Electric",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffBEECC4),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 9,
                                      offset: const Offset(0, 9)),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/images/gas.png'),
                                  color: Color(
                                    0xff4EB55B,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Gas",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffFFEAED),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 9,
                                      offset: const Offset(0, 9)),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/images/water.png'),
                                  color: Color(
                                    0xffC56674,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Water",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffFDE8CA),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 9,
                                      offset: const Offset(0, 9)),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/images/bus.png'),
                                  color: Color(
                                    0xffC6790B,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Bus",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffe0f5fd),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 9,
                                      offset: const Offset(0, 9)),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/images/telephone.png'),
                                  color: Color(
                                    0xff68c6e5,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Telephone",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffFFF3C5),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 9,
                                      offset: const Offset(0, 9)),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/images/air.png'),
                                  color: Color(
                                    0xffD9B428,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Air",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  //height: MediaQuery.of(context).size.width,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 5,
                          width: 32,
                          color: Colors.black12,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "All Internet Provider",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff334154),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 18),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Search for internet Provider',
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),

                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 4,
                        margin: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 75,
                          width: 350,
                          child: ListTile(
                            title: Text(
                              "ICC Communication LTD",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 18,
                              ),
                            ),
                            subtitle: const Text(
                              'Internet',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            leading: SizedBox(
                              child: Image.asset(
                                'assets/images/Icc.png',
                              ),
                            ),
                            onTap: () {},
                            dense: true,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 75,
                          width: 350,
                          child: ListTile(
                            title: Text(
                              "Dot Net",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Internet',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/Dotnet.png'),
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
                        child: SizedBox(
                          height: 75,
                          width: 350,
                          child: ListTile(
                            title: Text(
                              "SS Ali & Co",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Internet',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/ssali.png'),
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
                        child: SizedBox(
                          height: 75,
                          width: 350,
                          child: ListTile(
                            title: Text(
                              "Speed Tech Online",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Internet',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/speedtech.png'),
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
                        child: SizedBox(
                          height: 75,
                          width: 350,
                          child: ListTile(
                            title: Text(
                              "Fast Net",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Internet',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/fastnet.png'),
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
                        child: SizedBox(
                          height: 75,
                          width: 350,
                          child: ListTile(
                            title: Text(
                              "Tera Net",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                            subtitle: const Text(
                              'Internet',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 15,
                              ),
                            ),
                            selected: true,
                            onTap: () {},
                            leading: SizedBox(
                              child: Image.asset('assets/images/teranet.png'),
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
