import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Clipath extends StatelessWidget {
  const Clipath({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipPath(
                  clipper: CardClipper(),
                  child: Container(
                    color: Colors.green,
                    height: 160,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width, 0, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
