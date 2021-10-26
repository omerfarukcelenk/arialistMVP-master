// ignore_for_file: prefer_const_constructors

import 'package:arialist/auth/colors.dart';
import 'package:arialist/ui/search/popular_support.dart';
import 'package:arialist/ui/search/popular_break.dart';
import 'package:arialist/ui/search/search_bar.dart';
import 'package:flutter/material.dart';

class Search2 extends StatefulWidget {
  const Search2({Key? key}) : super(key: key);

  @override
  _Search2State createState() => _Search2State();
}

class _Search2State extends State<Search2> {
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
              Padding(
                padding: EdgeInsets.only(
                  top: s.width/7,
                  right: s.width/1.5,
                  left: s.width / 30),
                child: Text(
                  "Arama",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w800,
                    color: Clr.SearchText,
                  ),
                ),
              ),
              SearchBar(),
              Padding(
                padding: EdgeInsets.only(
                  top: s.width/10,
                  right: s.width/3.2,
                  left: s.width / 30),
                child: Text(
                  "Popüler Dinlenmeler",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w700,
                    color: Clr.SearchText,
                  ),
                ),
              ),
              PopularBreak(),
              Padding(
                padding: EdgeInsets.only(
                  top: s.width/12,
                  right: s.width/2.5,
                  left: s.width / 30),
                child: Text(
                  "Popüler Destekler",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w700,
                    color: Clr.SearchText,
                  ),
                ),
              ),
              PopularSupport(),
            ],
          ),
        ),
      ),
      
    );
  }
}