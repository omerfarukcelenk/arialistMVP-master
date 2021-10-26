

import 'package:arialist/auth/colors.dart';
import 'package:arialist/ui/login.dart';
import 'package:arialist/ui/register.dart';
import 'package:flutter/material.dart';


class Openning extends StatefulWidget {
  const Openning({Key? key}) : super(key: key);

  @override
  _OpenningState createState() => _OpenningState();
}

class _OpenningState extends State<Openning> {
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
              child: Text("Popüler sanatçılar şimdi sizlerle.",
                  style: TextStyle(fontSize: s.width / 15, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
            Positioned(
              top: s.width / 2.5,
              child: Image.asset("assets/images/learning.png", width: s.width),
            ),
            Positioned(
              top: s.width*1.4,
              left: s.width/15,
              child: GestureDetector(
              onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));},
              child: Container(
                height: s.width / 8,
                width: s.width / 1.2,
                decoration: BoxDecoration(
                    color: Clr.buttonGreen,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.only(top: s.width / 30),
                  child: Text("Üye Ol",
                      style:
                          TextStyle(fontSize: s.width / 25, color: Colors.white),
                      textAlign: TextAlign.center),
                ),
              ),
              ),
            ),
            Positioned(
              top: s.width*1.5,
              left: s.width/5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Zaten hesabınız var mı? Giriş Yap",
                    style: TextStyle(color: Colors.black))),
            )
          ],
        ),
      ),
    );
  }
}
