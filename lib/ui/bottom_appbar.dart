import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:flutter/material.dart';

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({Key? key}) : super(key: key);

  @override
  _BottomAppbarState createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    final _svgIcon = SvgIcn();
    return Container(
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: _svgIcon.backButton),
          Padding(
            padding: EdgeInsets.only(left: s.width / 8),
            child: Text("İlgi Alanları",
                style: TextStyle(fontSize: s.width / 15, color: Colors.black),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );

    /*Scaffold(
      bottomNavigationBar: BottomAppBar(
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                backgroundColor: Clr.NotificationAppBarColor,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                iconSize: 35,
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  // ignore: prefer_const_constructors
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.balcony_outlined),
                      label: "Keşfet"),
                  // ignore: prefer_const_constructors
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.search),
                      label: "Arama"),
                  // ignore: prefer_const_constructors
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.home),
                      label: "Profilim"),
                ],
              ),
            )
      
    )*/
  }
}
