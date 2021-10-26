import 'package:arialist/auth/colors.dart';
import 'package:arialist/ui/home_page/more.dart';
import 'package:arialist/ui/home_page/movements.dart';
import 'package:arialist/ui/home_page/popular_support.dart';
import 'package:arialist/ui/home_page/shared.dart';
import 'package:arialist/ui/home_page/top_bar.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage2 extends StatefulWidget {

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Clr.bgGreen,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              Shared(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: s.width/30, top: s.width/25),
                    child: Text(
                      "Hareketler",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Metropolis",
                        color: Clr.HomePageText,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: s.width/2.7, top: s.width/23 ),
                    child: Text(
                      "Tümünü Gör",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Metropolis",
                        color: Clr.HomePageText,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              ),
              const Movement(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: s.width/30, top: s.width/20),
                    child: Text(
                      "Popüler Destekler",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Metropolis",
                        color: Clr.HomePageText,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: s.width/8, top: s.width/23 ),
                    child: Text(
                      "Tümünü Gör",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Metropolis",
                        color: Clr.HomePageText,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              ),
              const PopularSupport(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: s.width/30, top: s.width/20),
                    child: Text(
                      "Daha Fazla",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Metropolis",
                        color: Clr.HomePageText,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                ],
              ),
              More(),
            ],
          ),
        ),
      ),
      
    );
    
  }
}