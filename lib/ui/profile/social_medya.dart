import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:flutter/material.dart';

class SocialMedya extends StatefulWidget {
  const SocialMedya({ Key? key }) : super(key: key);

  @override
  _SocialMedyaState createState() => _SocialMedyaState();
}

class _SocialMedyaState extends State<SocialMedya> {
  var _svgIcon = new SvgIcn();

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.bgGreen,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: s.width / 7, left: s.width / 15, right: s.width / 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: _svgIcon.backButton),
                      Padding(
                        padding: EdgeInsets.only(left: s.width / 35),
                        child: Text("Sosyal Medya Hesapları",
                            style: TextStyle(
                                fontSize: s.width / 15, color: Colors.black),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: s.width / 35),
                          child: Text("Twitter adresi",
                              style: TextStyle(
                                  fontSize: s.width / 25,
                                  color: Clr.buttonGreen,fontFamily: 'Metropolis-Medium')),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Clr.buttonGreen,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Örn: twitter.com/berkin",
                              hintStyle: TextStyle(color: Clr.TextGreen)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: s.width / 20, bottom: s.width / 35),
                          child: Text("Instagram adresi",
                              style: TextStyle(
                                  fontSize: s.width / 25,
                                  color: Clr.buttonGreen)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Clr.buttonGreen,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Örn: instagram.com/berkin",
                              hintStyle: TextStyle(color: Clr.TextGreen)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: s.width / 20, bottom: s.width / 35),
                          child: Text("Facebook adresi",
                              style: TextStyle(
                                  fontSize: s.width / 25,
                                  color: Clr.buttonGreen)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Clr.buttonGreen,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Örn: facebook.com/berkin",
                              hintStyle: TextStyle(color: Clr.TextGreen)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: s.width / 20, bottom: s.width / 35),
                          child: Text("LinkedIn adresi",
                              style: TextStyle(
                                  fontSize: s.width / 25,
                                  color: Clr.buttonGreen)),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Clr.buttonGreen,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Örn: linkedIn.com/berkin",
                              hintStyle: TextStyle(color: Clr.TextGreen)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: s.width / 18),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: s.width / 8,
                              width: s.width / 1.2,
                              decoration: BoxDecoration(
                                  color: Clr.buttonGreen,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.only(top: s.width / 30),
                                child: Text("Tamamla",
                                    style: TextStyle(
                                        fontSize: s.width / 25,
                                        color: Colors.white),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}