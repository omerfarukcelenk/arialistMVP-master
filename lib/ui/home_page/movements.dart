import 'package:arialist/auth/colors.dart';
import 'package:arialist/ui/home_page/profile/movement_profile.dart';
import 'package:flutter/material.dart';

class Movement extends StatelessWidget {
  const Movement({Key? key}) : super(key: key);

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
                child: Row(children: [
                  MovementProfile()]),
              );
            })
        ),
      )
    ]);
  }
}