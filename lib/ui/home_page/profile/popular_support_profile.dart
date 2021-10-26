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
        height: 75,
        width: 220,
        child: Stack(children: [
          Container(
                          height: 75,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Clr.PopularSupportBg
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left:20, top: 14 ),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink.withOpacity(0.2)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20 ,left: 80),
                          child: Text(
                              "Mey",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Metropolis",
                                color: Clr.GitaristTextColor,
                                fontWeight: FontWeight.w500
                              ), 
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 40),
                          child: Text(
                              "Fatma Turgut",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Metropolis",
                                color: Clr.NameTextColor,
                                fontWeight: FontWeight.w600
                              ), 
                          ),
                        ),
        ]
        )
        );
  }
}