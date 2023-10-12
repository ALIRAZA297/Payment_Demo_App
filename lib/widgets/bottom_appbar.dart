import 'package:flutter/material.dart';
import 'package:flutter_application_05/Screen/activity.dart';
import 'package:flutter_application_05/Screen/profile.dart';
import '../Screen/transaction.dart';
import '../Screen/voucher.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  void _onItemTapped(int index) {
    setState(() {});
  }

Route _createPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset(0.0, 0.0);
      const curve = Curves.ease;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}




  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              _onItemTapped(0);
            },
            icon: Image.asset('assets/images/hom.png'),
          ),
          IconButton(
            onPressed: () {
              _onItemTapped(1);
              Navigator.of(context).push(_createPageRoute(const Activity()));
            },
            icon: Image.asset('assets/images/Activ.png'),
          ),
          IconButton(
            onPressed: () {
              _onItemTapped(2);
              Navigator.of(context).push(_createPageRoute(const Transaction()));
            },
            icon: Image.asset('assets/images/Document.png'),
          ),
          IconButton(
            onPressed: () {
              _onItemTapped(3);
              Navigator.of(context).push(_createPageRoute(const Vouchers()));
            },
            icon: Image.asset('assets/images/Faver.png'),
          ),
          IconButton(
            onPressed: () {
              _onItemTapped(4);
              Navigator.of(context).push(_createPageRoute(const Profile()));
            },
            icon: Image.asset('assets/images/User.png'),
          ),
        ],
      ),
    );
  }
}
