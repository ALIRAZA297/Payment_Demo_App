import 'package:flutter/material.dart';
import 'package:flutter_application_05/checkbox_list.dart';

class Transfermoney extends StatefulWidget {
  static const routeName = "/money_transfer";
  const Transfermoney({super.key});

  @override
  State<Transfermoney> createState() => _TransfermoneyState();
}

class _TransfermoneyState extends State<Transfermoney> {
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
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 1),
                          color: Colors.grey.shade200,
                          spreadRadius: 2,
                        )
                      ]),
                  child: const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Enter name or number',
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    child: Text(
                      "Favorite",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.height,
                //color: Colors.blueAccent,
                child: ListView(
                  itemExtent: 115,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/A.jfif"),
                      maxRadius: 45,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/B.jfif"),
                      maxRadius: 45,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/C.jfif"),
                      maxRadius: 45,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/D.jfif"),
                      maxRadius: 45,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/E.jfif"),
                      maxRadius: 45,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    child: Text(
                      "All Contact",
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "A",
                    style: TextStyle(
                      color: Color(0xFF616E7C),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.height,
                child: const CheckboxListTile1(),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "B",
                    style: TextStyle(
                      color: Color(0xFF616E7C),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.height,
                child: ListView(children: [
                  ListTile(
                    title: const Text(
                      "Brandy Clark",
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
                    leading: Image.asset("assets/images/b1.png"),
                    trailing: Checkbox(
                        shape: const CircleBorder(),
                        value: false,
                        onChanged: (_) {}),
                  ),
                  ListTile(
                    title: const Text(
                      "Brooke Hogan",
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
                    leading: Image.asset("assets/images/b2.png"),
                    trailing: Checkbox(
                        shape: const CircleBorder(),
                        value: false,
                        onChanged: (_) {}),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
