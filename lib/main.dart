import 'package:arialist/auth/colors.dart';
import 'package:arialist/ui/bottom_appbar.dart';

import 'package:arialist/ui/home_page/home_page.dart';
import 'package:arialist/ui/notification.dart';
import 'package:arialist/ui/profile/communication_information.dart';
import 'package:arialist/ui/profile/password_reset.dart';
import 'package:arialist/ui/profile/profile_setting.dart';
import 'package:arialist/ui/profile/setting.dart';
import 'package:arialist/ui/profile/education_and_experience.dart';
import 'package:arialist/ui/profile/social_medya.dart';
import 'package:arialist/ui/user_profile.dart';

import 'package:arialist/ui/search/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileSetting(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.bgGreen,
        child: Image.asset("assets/others/logo.png"),
      ),
    );
  }
}
