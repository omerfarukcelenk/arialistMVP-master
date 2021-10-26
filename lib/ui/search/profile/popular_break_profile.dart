import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';

class PopularBreakProfile extends StatefulWidget {
  PopularBreakProfile({Key? key}) : super(key: key);

  @override
  _PopularBreakProfileState createState() => _PopularBreakProfileState();
}

class _PopularBreakProfileState extends State<PopularBreakProfile> {
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
              margin: EdgeInsets.only(top: s.width / 1.6),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(34),
                      bottomRight: Radius.circular(34)),
                  color: Clr.NameBg)),
          Container(
            margin: EdgeInsets.only(left: s.width/1.7, top: s.width/25),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.pink.withOpacity(0.2)
            )
          )        
        ]
      )
    );
  }
}