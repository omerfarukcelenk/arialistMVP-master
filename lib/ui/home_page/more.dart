import 'package:arialist/ui/home_page/profile/more_profile.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  More({Key? key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
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
                child: Row(children: [MoreProfile()]),
              );
            })
        ),
      )
    ]);
  }
}