import 'package:flutter/material.dart';

class Historydata {
  String historytitle;
  String historysubtile;
  String historyamount;
  Icon historyicon;
  Color historycolor;
  Historydata(
      {required this.historyamount,
      required this.historycolor,
      required this.historyicon,
      required this.historysubtile,
      required this.historytitle});
}

List<Historydata> historylist = [
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFF007AFF),
      historyicon: Icon(Icons.shop),
      historysubtile: "Expense",
      historytitle: "Spotify Premium"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFF34C759),
      historyicon: Icon(
        Icons.money,
        color: Colors.white,
      ),
      historysubtile: "Income",
      historytitle: "Salary"),
  Historydata(
      historyamount: "\$66.060",
      historycolor: Color(0xFFFFF9500),
      historyicon: Icon(Icons.emoji_objects, color: Colors.white),
      historysubtile: "Expense",
      historytitle: "Electricty"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFF34C759),
      historyicon: Icon(
        Icons.money,
        color: Colors.white,
      ),
      historysubtile: "Income",
      historytitle: "Salary"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFF5856D6),
      historyicon: Icon(Icons.home, color: Colors.white),
      historysubtile: "Expense",
      historytitle: "Rent"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFFFF3B30),
      historyicon: Icon(Icons.money, color: Colors.white),
      historysubtile: "Expense",
      historytitle: "McDonald's"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFF007AFF),
      historyicon: Icon(Icons.emoji_objects, color: Colors.white),
      historysubtile: "Expense",
      historytitle: "Netfilix"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFF34C759),
      historyicon: Icon(
        Icons.money,
        color: Colors.white,
      ),
      historysubtile: "Income",
      historytitle: "Salary"),
  Historydata(
      historyamount: "\$5.060",
      historycolor: Color(0xFFFFF3B30),
      historyicon: Icon(Icons.money, color: Colors.white),
      historysubtile: "Expense",
      historytitle: "McDonald's"),
];
