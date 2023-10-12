import 'package:flutter/material.dart';
import '../widgets/graphline.dart';

class Transaction extends StatefulWidget {
  static const routeName = "/transaction";
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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
            "Transaction",
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
              Center(
                child: Container(
                  height: 352,
                  width: 366,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.0),
                          child: SizedBox(
                              height: 300,
                              width: 350,
                              child: StackedLineChartExample()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SizedBox(
                  height: 25,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Recent Transaction',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Color(0xffACBAC3),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color(0xffACBAC3),
                thickness: 0.5,
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
                    'Account Subscription',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF616E7C),
                      fontSize: 15,
                    ),
                  ),
                  selected: true,
                  onTap: () {},
                  leading: SizedBox(
                    child: Image.asset('assets/images/netflix.png'),
                  ),
                  trailing: const Text('\$25',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Yesterday",
                    style: TextStyle(
                      color: Color(0xffACBAC3),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color(0xffACBAC3),
                thickness: 0.5,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Text(
                    "Trust Bank",
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
                    child: Image.asset('assets/images/trustbank.png'),
                  ),
                  trailing: const Text('\$95',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
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
                    'Pro Account Update',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF616E7C),
                      fontSize: 15,
                    ),
                  ),
                  selected: true,
                  onTap: () {},
                  leading: SizedBox(
                    child: Image.asset('assets/images/shutterstock.png'),
                  ),
                  trailing: const Text('\$40',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
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
