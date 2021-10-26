import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:flutter/material.dart';

class AboutmeArrangement extends StatefulWidget {
  const AboutmeArrangement({Key? key}) : super(key: key);

  @override
  _AboutmeArrangementState createState() => _AboutmeArrangementState();
}

class _AboutmeArrangementState extends State<AboutmeArrangement> {
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    int value = 2;
    return Container(
      width: s.width/4,
      height: s.width/1.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Clr.HomePageText),
      child: Column(
        children: [
          Expanded(
            child: ListView(children: [
              Padding(
                padding:
                    EdgeInsets.only(left: s.width / 30, right: s.width / 30),
                child: Row(
                  children: [
                    Text("İlgi ve Yetenekler",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Metropolis')),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text("Düzenle",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Metropolis'))),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: s.width / 30, right: s.width / 30),
                child: Row(
                  children: [
                    Text("Eğitim ve Deneyim",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Metropolis')),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text("Düzenle",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Metropolis'))),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: s.width / 30, right: s.width / 30),
                child: Row(
                  children: [
                    Text("İletişim Bilgileri",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Metropolis')),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text("Düzenle",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Metropolis'))),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: s.width / 30, right: s.width / 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Sosyal Medya ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Metropolis')),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text("Düzenle",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Metropolis'))),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(onTap: () {}, child: _svgIcon.facebook),
                       
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
