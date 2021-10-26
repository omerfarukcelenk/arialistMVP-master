import 'package:arialist/auth/colors.dart';
import 'package:arialist/ui/home_page/profile/shared_profile.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Shared extends StatefulWidget {
  @override
  _SharedState createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Column(children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: 
            List.generate(10, (index) {
              return Padding(
                padding: EdgeInsets.only(top: s.width / 40, left: s.width / 30),
                child: Row(children: [SharedProfile()]),
              );
            })
        ),
      )
    ]);
  }
}
