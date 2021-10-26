import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';

class PopularSupportProfile extends StatefulWidget {
  const PopularSupportProfile({Key? key}) : super(key: key);

  @override
  _PopularSupportProfileState createState() => _PopularSupportProfileState();
}

class _PopularSupportProfileState extends State<PopularSupportProfile> {
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
        ]));
  }
}