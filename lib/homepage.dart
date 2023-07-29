import 'package:finance/screen/history.dart';
import 'package:finance/screen/managecard.dart';
import 'package:finance/screen/payments.dart';
import 'package:finance/screen/sandmony.dart';
import 'package:finance/screen/transaction.dart';
import 'package:flutter/material.dart';

import 'screen/spotify.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int changeIndex = 0;
  final pages = [
    Transactionpage(),
    Paymentscreen(),
    Historypage(),
    Managecardpage(),
    SandMoney(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[changeIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.green,
          currentIndex: changeIndex,
          onTap: (index) => setState(() {
                changeIndex = index;
              }),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.green[100],
              icon: Icon(
                Icons.home,
                //color: Colors.blue,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.green[100],
                icon: Icon(Icons.arrow_forward_outlined),
                label: "Payments"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics_outlined), label: "Analysics"),
            BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
            //BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          ]),
    );
  }
}
