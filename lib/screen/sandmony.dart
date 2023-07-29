import 'package:finance/style/stylepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SandMoney extends StatelessWidget {
  const SandMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              "X",
              style: TextStyle(fontSize: 24.sp, color: Colors.blue),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Sand Money",
              style: headtextsy,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.red[300],
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seach Jones',
                          style: midiamtext,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("Account ending in 2023"),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 25.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 217, 217),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "CHANGE >",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Add a message",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 100.h,
            ),
            Text("SEND MONEY FROM"),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      "VISA",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Account",
                      style: midiamtext,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("**** 32154")
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 20.h,
            ),
            Text("ACCOUNT"),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "\$0.00",
              style: TextStyle(
                fontSize: 45.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     fixedSize:
            //   ),
            //   onPressed: () {}, child: Text("Sand s0.00"))
            Spacer(
              flex: 1,
            ),
            Container(
              height: 40.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                "Sand s0.00",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                ),
              )),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
