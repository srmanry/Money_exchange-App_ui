import 'package:finance/homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(Finance());

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    // designSize:
    // const Size(360, 690);
    // minTextAdapt:
    // true;
    // splitScreenMode:
    // true;
    return ScreenUtilInit(builder: (_, index) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: ThemeData(),
        //home: SandMoney(),
        //home: Spotifyscreen(),
        // home: Historypage(),
        //home: Payments(),
        //home: Managecardpage(),
        home: const Homepage(),
        // home: Clipath(),
      );
    });
  }
}
