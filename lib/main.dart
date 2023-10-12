import 'package:flutter/material.dart';
import 'package:flutter_application_05/Screen/activity.dart';
import 'package:flutter_application_05/Screen/aliexpress.dart';
import 'package:flutter_application_05/Screen/card_detail.dart';
import 'package:flutter_application_05/Screen/link_now.dart';
import 'package:flutter_application_05/Screen/money_transfer.dart';
import 'package:flutter_application_05/Screen/password_screen.dart';
import 'package:flutter_application_05/Screen/pay_bill.dart';
import 'package:flutter_application_05/Screen/payment_successfull.dart';
import 'package:flutter_application_05/Screen/profile.dart';
import 'package:flutter_application_05/Screen/search_screen.dart';
import 'package:flutter_application_05/Screen/setting.dart';
import 'package:flutter_application_05/Screen/transaction.dart';
import 'package:flutter_application_05/widgets/bottom_appbar.dart';
import 'Screen/dashbord.dart';
import 'package:flutter_application_05/Screen/send_money.dart';
import 'Screen/voucher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const routeName = '/main';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        Dashbord.routeName:(context) => const Dashbord(),
        Paybill.routeName:(context) => const Paybill(),
        Transaction.routeName:(context) => const Transaction(),
        Activity.routeName:(context) => const Activity(),
        Transfermoney.routeName:(context) => const Transfermoney(),
        SendMoney.routeName:(context) => const SendMoney(),
        PasswordScreen.routeName:(context) => const PasswordScreen(),
        SearchScreen.routeName:(context) => const SearchScreen(),
        Profile.routeName:(context) => const Profile(),
        LinkNow.routeName:(context) => const LinkNow(),
        CardDetail.routeName:(context) => const CardDetail(),
        Settings.routeName:(context) => const Settings(),
        PaymentSuccessfull.roteName:(context) => const PaymentSuccessfull(),
        Vouchers.routeName:(context) => const Vouchers(),
        AliExpress.routeName:(context) => const AliExpress(),
        MyApp.routeName:(context) => const MyApp(),

      },
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: Scaffold(
          bottomNavigationBar: MyBottomNavigationBar(),
          body: SearchScreen(),
        ),
      ),
    );
  }
}



