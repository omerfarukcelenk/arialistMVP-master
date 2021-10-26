
import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  top: s.width / 5, left: s.width / 15, right: s.width / 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(onTap: () {Navigator.pop(context);}, child: _svgIcon.backButton),
                      Padding(
                        padding: EdgeInsets.only(left: s.width / 5),
                        child: Text("Üye Olun",
                            style: TextStyle(
                                fontSize: s.width / 15, color: Colors.black),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: s.width / 10),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Clr.buttonGreen,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: "E-posta Adresi"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: s.width / 25),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Clr.buttonGreen,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: "Kullanıcı Adı"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: s.width / 25),
                    child: TextField(
                      decoration: InputDecoration(
                        
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Clr.buttonGreen,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: "Şifre"),
                    ),
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
                          child: Text("Üye Ol",
                              style: TextStyle(
                                  fontSize: s.width / 25, color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top:s.width/20),
                    child: Text("veya",style: TextStyle(
                                  fontSize: s.width / 25, color: Clr.buttonGreen),
                              textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:s.width/20),
                    child: FloatingActionButton(onPressed: (){},child: _svgIcon.google,backgroundColor: Clr.buttonGreen,),
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
