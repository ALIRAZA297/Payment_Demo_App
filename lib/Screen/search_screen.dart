import 'package:flutter/material.dart';
import 'package:flutter_application_05/Screen/pay_bill.dart';
import 'dashbord.dart';
import 'money_transfer.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = "/search_screen";
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 22.0,
                          ),
                        ),
                        const Text("Michael Samuel",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 95.0),
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.search),
                      ),
                    ),
                    const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.notifications_none),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 215, 236, 255),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(Dashbord.routeName);
                      },
                      child: Container(
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: const Color.fromARGB(255, 120, 148, 247),
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 25,
                              top: 150,
                              child: SizedBox(
                                width: 119,
                                height: 23,
                                child: Text(
                                  'Michael Samuel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'SF UI Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 270,
                              top: 140,
                              child: SizedBox(
                                width: 55,
                                height: 13.82,
                                child: Text(
                                  "Exp. Date",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 275,
                              top: 160,
                              child: SizedBox(
                                width: 41,
                                height: 13,
                                child: Text(
                                  '02/30',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 175,
                              top: 113,
                              child: SizedBox(
                                child: Text(
                                  '1234',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 125,
                              top: 115,
                              child: SizedBox(
                                child: Text(
                                  '****',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 75,
                              top: 115,
                              child: SizedBox(
                                child: Text(
                                  '****',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 25,
                              top: 115,
                              child: SizedBox(
                                child: Text(
                                  '****',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 40,
                              child: SizedBox(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        width: 60,
                                        height: 35,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(
                                                  255, 120, 148, 247),
                                              Colors.white10
                                            ],
                                          ),
                                        ),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'USD',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 95,
                              top: 45,
                              child: SizedBox(
                                child: Text(
                                  '978.85',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 26,
                              top: 12,
                              child: Text(
                                "Current   Balance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 290,
                                    top: 12,
                                    child: Container(
                                      width: 24.45,
                                      height: 24.45,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFE9231A),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 299.57,
                                    top: 12,
                                    child: Opacity(
                                      opacity: 0.80,
                                      child: Container(
                                        width: 24.45,
                                        height: 24.45,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFFE89418),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 254, 220, 220),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Service",
                        style: TextStyle(
                          fontFamily: 'SF UI Text',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 9,
                                    offset: const Offset(0, 9)),
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffe1f5ea),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const ImageIcon(
                                AssetImage('assets/images/Wallet.png'),
                                color: Color(
                                  0xff74CC9B,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Wallet",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xfffeeada),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  blurRadius: 9,
                                  offset: const Offset(0, 9),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(Transfermoney.routeName);
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/images/transfer.png'),
                                color: Color(
                                  0xffef9c55,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Transfer",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: const Color(0xfff9f5ff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 9,
                                    offset: const Offset(0, 9)),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(Paybill.routeName);
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/images/Pay.png'),
                                color: Color(
                                  0xffd8a8ee,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Pay",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 17,
                              ),
                            ),
                          ),
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
                                AssetImage('assets/images/top-up.png'),
                                color: Color(
                                  0xff68c6e5,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Topup",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF616E7C),
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0, left: 20, bottom: 15),
                child: SizedBox(
                  height: 20,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recent Transaction',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                child: ListTile(
                  title: Text(
                    "Adobe Collection",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      fontSize: 20,
                    ),
                  ),
                  subtitle: const Text(
                    'Payment via wallet can be done',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF616E7C),
                      fontSize: 15,
                    ),
                  ),
                  selected: true,
                  leading: SizedBox(
                    child: Image.asset(
                      'assets/images/adobe.png',
                    ),
                  ),
                  trailing: const Text(
                    "\$125",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () {},
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
                    'Payment Receved',
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
                  trailing: const Text('\$95',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
