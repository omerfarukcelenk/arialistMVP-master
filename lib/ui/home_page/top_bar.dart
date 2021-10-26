// ignore_for_file: sized_box_for_whitespace

import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.width/3,
      child: Stack(
        children: [
          Padding(
          padding: EdgeInsets.only(left: s.width/30, top: s.width/9),
          child: Text(
            "Senin İçin",
            style: TextStyle(
                      fontSize: 34,
                      fontFamily: "Metropolis",
                      color: Clr.HomePageText,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: s.width/4.7,left: s.width/30 ),
                  child: Text(
                    "Öne Çıkanlar",
                    style: TextStyle(
                      fontSize: 34,
                      fontFamily: "Metropolis",
                      color: Clr.HomePageText,
                      fontWeight: FontWeight.w800
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left: s.width/1.5, top: s.width/18),
                  child: SvgPicture.asset("assets/images/image_hand_new.svg"),
                ),
              ])
    );
  }
}