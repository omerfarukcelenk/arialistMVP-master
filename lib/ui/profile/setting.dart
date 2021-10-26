import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  top: s.width / 10, left: s.width / 15, right: s.width / 15),
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
                        padding: EdgeInsets.only(left: s.width / 4.5),
                        child: Text("Ayarlar",
                            style: TextStyle(
                                fontSize: s.width / 15, color: Colors.black),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: s.width / 20, bottom: s.width / 45),
                    child: const Text("Hesap",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    height: s.height / 3.4,
                    width: s.width,
                    decoration: BoxDecoration(
                      color: Clr.HomePageText,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: s.width / 27,
                                    left: s.width / 20,
                                    bottom: s.width / 27),
                                child: Text("Profil Ayarları",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: s.width / 23,
                                        fontFamily: 'Metropolis')),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: s.width / 20),
                          child: const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: s.width / 27,
                                    left: s.width / 20,
                                    bottom: s.width / 27),
                                child: Text("Şifreni Sıfırla",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: s.width / 23,
                                        fontFamily: 'Metropolis')),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: s.width / 20),
                          child: const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: s.width / 27,
                                    left: s.width / 20,
                                    bottom: s.width / 27),
                                child: Text("E-Posta Adresi Değiştirme",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: s.width / 23,
                                        fontFamily: 'Metropolis')),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: s.width / 20),
                          child: const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: s.width / 27,
                                    left: s.width / 20,
                                    bottom: s.width / 27),
                                child: Text("Geri bildirim ve Destek",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: s.width / 23,
                                        fontFamily: 'Metropolis')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: s.width / 30, bottom: s.width / 45),
                    child: const Text("Yasal",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    height: s.height / 6.5,
                    width: s.width,
                    decoration: BoxDecoration(
                      color: Clr.HomePageText,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: s.width / 27,
                                    left: s.width / 20,
                                    bottom: s.width / 27),
                                child: Text("Gizlilik Sözleşmesi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: s.width / 23,
                                        fontFamily: 'Metropolis')),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: s.width / 20),
                          child: const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: s.width / 27,
                                    left: s.width / 20,
                                    bottom: s.width / 27),
                                child: Text("Kullanım Şartları",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: s.width / 23,
                                        fontFamily: 'Metropolis')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: s.width / 5),
                    child: Container(
                      height: s.height / 15,
                      width: s.width,
                      decoration: BoxDecoration(
                        color: Clr.HomePageText,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: s.width / 30),
                        child: Text(
                          "Çıkış Yap",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: s.width / 23,
                              fontFamily: 'Metropolis'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
