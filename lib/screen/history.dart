import 'package:finance/localdata/historydata.dart';
import 'package:finance/screen/spotify.dart';
import 'package:finance/style/stylepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Historypage extends StatefulWidget {
  Historypage({super.key});

  @override
  State<Historypage> createState() => _HistorypageState();
}

class _HistorypageState extends State<Historypage> {
  List historydate = [
    "December 2021",
    "January",
    "February",
    "December 2021",
    "January",
    "February",
    "December 2021",
    "January",
    "February",
  ];

  var transtitle = [
    "Spotify Premium",
    "Salary",
    "Electricity",
  ];

  var dtranstitle = [
    "Rent",
    "McDonald's",
    "Netfiliz",
  ];

  var transubtitle = [
    "Expense",
    "Income",
    "Expense",
  ];

  var transmany = [
    " 9.99",
    "+5631,55",
    "58.69",
  ];

  var dtransmany = [
    "58.69",
    "9.99",
    "+5631,55",
  ];

  List transcolor = [
    Color(0XFFF007AFF),
    Color(0XFFF34C759),
    Color(0XFFFFF9500)
  ];

  List dtranscolor = [
    Color(0XFFF5856D6),
    Color(0XFFFFF5449),
    Color(0XFFF60ACFF)
  ];

  List transtextcolor = [Colors.black, Color(0XFFF34C759), Colors.black];

  List iconlist = [
    Icon(
      Icons.shopify,
      color: Colors.white,
    ),
    Icon(
      Icons.money,
      color: Colors.white,
    ),
    Icon(
      Icons.light,
      color: Colors.white,
    ),
  ];

  List diconlist = [
    Icon(
      Icons.home,
      color: Colors.white,
    ),
    Icon(
      Icons.money,
      color: Colors.white,
    ),
    Icon(
      Icons.light,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "History",
                style: headtextsy,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: historydate.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          historydate[index],
                          style: midiamtext,
                        ),
                      );
                    }),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 0.0, left: 8.0),
              child: Text(
                "21 JANUARY",
              ),
            ),
            Expanded(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: historylist.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Spotifyscreen()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40.h,
                                    width: 45.w,
                                    child: Center(
                                      child: historylist[index].historyicon,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: historylist[index].historycolor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        historylist[index].historytitle,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        historylist[index].historysubtile,
                                        style: TextStyle(fontSize: 11.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              historylist[index].historyamount,
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
