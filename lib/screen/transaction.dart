import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance/localdata/tansctiondata.dart';
import 'package:finance/localdata/tansctiondata.dart';
import 'package:finance/localdata/tansctiondata.dart';
import 'package:finance/style/stylepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../localdata/tansctiondata.dart';

class Transactionpage extends StatelessWidget {
  Transactionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20.r,
                  child: Icon(Icons.person),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("CURRENT ACCOUNT"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\$5.43521.25",
              style: headtextsy,
            ),
          ),
          customslider(),
          curentaccoutn(),
          Expanded(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: trnsctionlist.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 8.0, left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: trnsctionlist[index].color,
                                  ),
                                  child: Center(
                                    child: trnsctionlist[index].icon,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    trnsctionlist[index].transtitle,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    trnsctionlist[index].trnsubtile,
                                    style: smaletext,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            trnsctionlist[index].trnstraling,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}

//---------------------Widgets
curentaccoutn() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 65.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              // offset: const Offset(
              //   5.0,
              //   5.0,
              // ),
              color: const Color.fromARGB(255, 187, 180, 180),
              blurRadius: 3.r,
              // spreadRadius: 5
              blurStyle: BlurStyle.outer)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      //---------------------------------
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFF007AFF),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: Text(
                        "VISA",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Curent Account",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "....2183",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "MANAGE >",
                  style: TextStyle(fontSize: 12.sp, color: Colors.white),
                ),
              ),
              height: 20.h,
              width: 75.w,
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ),
  );
}

trasction() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Transactions",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            "See All  >",
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          )),
    ],
  );
}

customslider() {
  List slidercolor = [
    Colors.blue,
    Colors.amber,
    Colors.purple,
  ];
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CarouselSlider.builder(
      carouselController: CarouselController(),
      itemCount: slidercolor.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 100.h,
              // width: 600,

              decoration: BoxDecoration(
                  color: slidercolor[itemIndex],
                  borderRadius: BorderRadius.circular(10)),
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
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 30.0),
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
                                fontSize: 18.sp,
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
      },
      options: CarouselOptions(
        autoPlay: true,
        //enlargeCenterPage: true,
        viewportFraction: 0.9,
        // aspectRatio: 2.0,
        initialPage: 2,
      ),
    ),
  );
}

//tranctionlist() {
//   List transcolor = [
//     Color(0XFFF007AFF),
//     Color(0XFFF34C759),
//     Color(0XFFFFF9500)
//   ];
//   return Expanded(
//     child: ListView.builder(
//         itemCount: tranctioninfo.length,
//         physics: NeverScrollableScrollPhysics(),
//         itemBuilder: (_, index) {
//           return Padding(
//             padding: const EdgeInsets.only(top: .0, bottom: 0.0),
//             child: ListTile(
//               leading: Container(
//                 decoration: BoxDecoration(
//                     color: transcolor[index],
//                     borderRadius: BorderRadius.circular(10)),
//                 height: 40.h,
//                 width: 40.w,
//                 child: Icon(Icons.money),
//               ),
//               title: Text(
//                 tranctioninfo[index].transtitle,
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//               subtitle: Text(tranctioninfo[index].trnsubtile),
//               trailing: Text(
//                 tranctioninfo[index].trnstraling,
//                 style: TextStyle(
//                   color: transcolor[index],
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           );
//         }),
//   );
// }
