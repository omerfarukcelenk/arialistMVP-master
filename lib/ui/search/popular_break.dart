import 'package:arialist/ui/search/profile/popular_break_profile.dart';
import 'package:flutter/material.dart';

class PopularBreak extends StatefulWidget {
  const PopularBreak({Key? key}) : super(key: key);

  @override
  _PopularBreakState createState() => _PopularBreakState();
}

class _PopularBreakState extends State<PopularBreak> {
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
                child: Row(children: [PopularBreakProfile()]),
              );
            })
        ),
      )
    ]);
  }
}