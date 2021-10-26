// ignore_for_file: unnecessary_new

import 'package:arialist/auth/colors.dart';
import 'package:arialist/auth/icons.dart';
import 'package:arialist/ui/profile/about_me.dart';
import 'package:arialist/ui/profile/shares.dart';
import 'package:arialist/ui/profile/supports.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with TickerProviderStateMixin {
  final _svgIcon = SvgIcn();
  var username = "Merve Nur Topak";
  var profession = "Gitarist";
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
    
  }
void _handleTabSelection() {
    setState(() {
     });
 }
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Clr.bgGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Clr.bgGreen,
              height: s.height / 2.7,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: s.width / 15,
                        right: s.width / 20,
                        left: s.width / 20),
                    child: Row(
                      children: [
                        Text("Profilim",
                            style: TextStyle(
                                fontSize: s.width / 14, color: Colors.black),
                            textAlign: TextAlign.center),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text("Düzenle",
                                style: TextStyle(color: Colors.black))),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: s.width / 5,
                          width: s.width / 5,
                          child: ClipRRect(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/profile1.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: s.width / 10),
                          height: s.width / 5,
                          width: s.width / 5,
                          child: Column(
                            children: [Text("45"), Text("Gönderi")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: s.width / 10),
                          height: s.width / 5,
                          width: s.width / 5,
                          child: Column(
                            children: [Text("98"), Text("Destek")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: s.width / 10),
                          height: s.width / 5,
                          width: s.width / 5,
                          child: Column(
                            children: [Text("150"), Text("Bağlantı")],
                          ),
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.only(left: s.width / 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(username,
                                style: TextStyle(
                                  fontSize: s.width / 30,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            _svgIcon.musicensturtman,
                            Text(
                              profession,
                              style: TextStyle(fontSize: s.width / 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TabBar( 
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Clr.buttonGreen ),
             controller: _tabController,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color: _tabController.index == 0
                      ? Clr.HomePageText
                      : Clr.unSelectedButton,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: s.width/5,
                    width: s.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: s.width/30),
                      child: const Text("Hakkımda",textAlign: TextAlign.center,),
                    )),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: _tabController.index == 1
                      ? Clr.HomePageText
                      : Clr.unSelectedButton,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: s.width/5,
                    width: s.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: s.width/30),
                      child: const Text("Gönderiler",textAlign: TextAlign.center,),
                    )),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: _tabController.index == 2
                      ? Clr.HomePageText
                      : Clr.unSelectedButton,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: s.width/5,
                    width: s.width/3,
                    child: Padding(
                      padding: EdgeInsets.only(top: s.width/30),
                      child: const Text("Destekler",textAlign: TextAlign.center,),
                    )),
                ),
              ],
              
             
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(s.width/20),
                    child: const AboutMe(),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(s.width/20),
                    child: const Shares(),
                  ),Padding(
                    padding:  EdgeInsets.all(s.width/20),
                    child: const Supports(),
                  ),
                  
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
