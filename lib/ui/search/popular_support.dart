import 'package:arialist/ui/search/profile/popular_support_profile.dart';
import 'package:flutter/material.dart';

class PopularSupport extends StatefulWidget {
  const PopularSupport({Key? key}) : super(key: key);

  @override
  _PopularSupportState createState() => _PopularSupportState();
}

class _PopularSupportState extends State<PopularSupport> {
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
                child: Row(children: [PopularSupportProfile()]),
              );
            })),
      )
    ]);
  }
}