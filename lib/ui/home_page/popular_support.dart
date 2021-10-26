import 'package:arialist/ui/home_page/profile/popular_support_profile.dart';
import 'package:flutter/material.dart';

class PopularSupport extends StatelessWidget {
  const PopularSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Column(children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(10, (index) {
              return Padding(
                padding: EdgeInsets.only(top: s.width / 40, left: s.width / 30),
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(children: [const PopularSupportProfile()]),
              );
            })),
      )
    ]);
  }
}
