// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SharedProfile extends StatefulWidget {
  SharedProfile({Key? key}) : super(key: key);

  @override
  _SharedProfileState createState() => _SharedProfileState();
}

class _SharedProfileState extends State<SharedProfile> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return SizedBox(
        height: 300,
        width: 300,
        child: Stack(children: [
          Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Clr.NotificationBg)),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: s.width / 1.55),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(34),
                bottomRight: Radius.circular(34)
              ),
              color: Clr.NameBg
            ),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(top: s.width/50,left: s.width/15  ),
                  child: Text("Melih Gündoğan",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.w600,
                      color: Clr.NameTextColor
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: s.width/5,top: s.width/50),
                  child: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.favorite,color: Clr.NameTextColor,),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
