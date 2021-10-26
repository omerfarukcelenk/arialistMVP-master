import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:flutter/material.dart';

class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({ Key? key }) : super(key: key);

  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
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
                        padding: EdgeInsets.only(left: s.width / 8),
                        child: Text("E-Posta Yenileme",
                            style: TextStyle(color:Clr.NotificationText,fontSize: s.width/15,fontFamily: 'Metropolis-Medium'),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Clr.buttonGreen,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Eski Şifre",
                              hintStyle: TextStyle(color: Clr.TextGreen)),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.only(top:s.width/25),
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Clr.buttonGreen,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintText: " Yeni Şifre",
                                hintStyle: TextStyle(color: Clr.TextGreen)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: s.width / 20, bottom: s.width / 35),
                          child: Text("Şifrenizde en az bir büyük harf, bir küçük harf ve noktalama işereti yer almak zorundadır.",
                              style: TextStyle(color:Clr.buttonGreen,fontSize: 14,fontFamily: 'Metropolis-Medium')),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Clr.buttonGreen,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: " Yeni Şifre Tekrarı",
                              hintStyle: TextStyle(color: Clr.TextGreen)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: s.width / 5),
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