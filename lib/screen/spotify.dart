import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spotifyscreen extends StatelessWidget {
  Spotifyscreen({super.key});
  var headertext = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.black);
  var midrtext = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Spotify Premium",
              style: headertext,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text("Expene . Recurring"),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 0,
              child: Container(
                height: 60.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: midrtext,
                    ),
                    Text(
                      'Entertainment',
                      style: midrtext,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Container(
                height: 60.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date & Time',
                      style: midrtext,
                    ),
                    Text(
                      '22 Jan, 17:28',
                      style: midrtext,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10)),
                      height: 40.h,
                      width: 40.h,
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue,
                      )),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add notes",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("Add some notes or tages to this tranaction"),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20.sp,
            ),
            Text(
              "History",
              style: headertext,
            ),
            Card(
                elevation: 0,
                child: Container(
                  height: 60.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Number of transactions',
                        style: midrtext,
                      ),
                      Text(
                        '26',
                        style: midrtext,
                      ),
                    ],
                  ),
                )),
            // SizedBox(
            //   height: 10,
            // ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Avarage spent',
                          style: midrtext,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("26 payments"),
                      ],
                    ),
                    Text(
                      '259.74',
                      style: midrtext,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total spent',
                          style: midrtext,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("26 payments"),
                      ],
                    ),
                    Text(
                      '259.74',
                      style: midrtext,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      height: 40.h,
                      width: 40.w,
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Something wrong",
                        style: midrtext,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("Contact support to queray this transaction"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
