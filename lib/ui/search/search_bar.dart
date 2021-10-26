import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: s.width / 45,
        left: s.width / 30,
        right: s.width / 30),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Clr.SearchHintTextBg),
        child: TextField(
          keyboardType: TextInputType.text,
          onChanged: (value) {},
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontFamily: "Metropolis",
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Clr.SearchHintText,
            ),
            filled: true,
            fillColor: Colors.transparent,
            hintText: ("Müzisyenler, videolar ve dahası"),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
