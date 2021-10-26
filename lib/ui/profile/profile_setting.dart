import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:arialist/ui/profile/aboutme_arrangement.dart';
import 'package:flutter/material.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  var _svgIcon = new SvgIcn();
  var username = "Merve Nur Topak";
  var profession = "Gitarist";
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
                        padding: EdgeInsets.only(left: s.width / 7),
                        child: Text("Profil Ayarları",
                            style: TextStyle(
                                color: Clr.HomePageText,
                                fontSize: s.width / 15,
                                fontFamily: 'Metropolis'),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.width / 4,
                    width: s.width / 4,
                    child: ClipRRect(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/profile1.png',
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Profil Fotoğrafını Değiştir",
                          style: TextStyle(
                              color: Clr.HomePageText,
                              fontSize: s.width / 30,
                              fontFamily: 'Metropolis'))),
                  Expanded(
                    child: ListView(children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: s.width/20),
                        child: Container(
                          height: s.height/4.5,
                          width: s.width/5,
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
                                      child: Text("Adı",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: s.width / 25,
                                              fontFamily: 'Metropolis')),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: s.width / 10),
                                      child: Text("$username",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: s.width / 25,
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
                                      child: Text("Kullanıcı Adı",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: s.width / 25,
                                              fontFamily: 'Metropolis')),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: s.width / 10),
                                      child: Text("merve.nur",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: s.width / 25,
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
                                      child: Text("Biyografi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: s.width / 25,
                                              fontFamily: 'Metropolis')),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: s.width / 10),
                                      child: Text("$profession",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: s.width / 25,
                                              fontFamily: 'Metropolis')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const AboutmeArrangement(),
                    ]),
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
