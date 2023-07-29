import 'package:finance/style/stylepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Managecardpage extends StatelessWidget {
  Managecardpage({super.key});
  List cardtitle = [
    "Freeze card",
    "Forget your PIN ?",
    "Settings",
    "Support",
  ];
  List cardsubtitle = [
    "Lost or stolen ? Freeze it here",
    "Lost or stolen ? Freeze it here",
    "Terminate and more",
    "Contact us about your card",
    "Lost or stolen ? Freeze it here",
    "Lost or stolen ? Freeze it here",
    "Terminate and more",
    "Contact us about your card",
    "Lost or stolen ? Freeze it here",
    "Lost or stolen ? Freeze it here",
    "Terminate and more",
    "Contact us about your card",
  ];

  List cardcolor = [
    Color(0xFFFFF2D55),
    Color(0xFFF5856D6),
    Color(0XFFF007AFF),
    Color(0xFFF34C759)
  ];
  List cardicon = [
    Icon(
      Icons.face,
      color: Colors.white,
    ),
    Icon(
      Icons.money,
      color: Colors.white,
    ),
    Icon(
      Icons.settings,
      color: Colors.white,
    ),
    Icon(
      Icons.chat,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Manage card",
                  style: headtextsy,
                ),
              ),
              mycard(),
              Container(
                height: 350.h,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    // itemCount: 20,
                    itemCount: cardtitle.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 60.h,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 8.0),
                              child: Container(
                                child: cardicon[index],
                                height: 40.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                  color: cardcolor[index],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    cardtitle[index],
                                    style: midiamtext,
                                  ),
                                  Text(cardsubtitle[index]),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

mycard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: 150.h,
        // width: 600,

        decoration: BoxDecoration(
            color: Colors.blue[500], borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  "****  ****  ****  2183",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "JOHN  APPLESEED   ***",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "VISA",
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
  );
}
