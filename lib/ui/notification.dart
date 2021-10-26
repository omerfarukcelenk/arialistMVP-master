import 'package:arialist/auth/colors.dart';
import 'package:arialist/models/notification_modul.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  var notification_1 = Notification_modul(
    notification_name: "Melih Gündoğan seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_2 = Notification_modul(
    notification_name: "Ömer Çelenk seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_3 = Notification_modul(
    notification_name: "Esra Bulut seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_4 = Notification_modul(
    notification_name: "Nurdan Kara seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_5 = Notification_modul(
    notification_name: "Melih Gündoğan seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_6 = Notification_modul(
    notification_name: "Ömer Çelenk seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_7 = Notification_modul(
    notification_name: "Esra Bulut seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  var notification_8 = Notification_modul(
    notification_name: "Nurdan Kara seni destekledi.",
    notification_imgUrl: "https://avatars.githubusercontent.com/u/80397359?v=4",
  );

  List<Notification_modul> notificationList = [];

  @override
  void initState() {
    notificationList.add(notification_1);
    notificationList.add(notification_2);
    notificationList.add(notification_3);
    notificationList.add(notification_4);
    notificationList.add(notification_5);
    notificationList.add(notification_6);
    notificationList.add(notification_7);
    notificationList.add(notification_8);
  }

  Future<List<Notification_modul>> favorileriGetir() async {
    return notificationList;
  }

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.bgGreen,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: s.width / 5, left: s.width / 18),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/Icons/backButtonIcon.svg"),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: s.width / 5, right: s.width / 3),
                  child: Text(
                    "Hareketler",
                    style: TextStyle(
                      color: Clr.NotificationText,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            FutureBuilder<List<Notification_modul>>(
              future: favorileriGetir(),
              builder: (context, snaphot) {
                if (snaphot.hasData) {
                  var favoriteList = snaphot.data;
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1, childAspectRatio: 4 / 1.12),
                      shrinkWrap: true,
                      itemCount: favoriteList!.length,
                      itemBuilder: (context, indeks) {
                        var favorite = favoriteList[indeks];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Clr.NotificationBg,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: s.width / 9,
                                    width: s.width / 9,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            favorite.notification_imgUrl,
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 40, right: 5),
                                        child: Text(
                                          favorite.notification_name,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Clr.NameTextColor,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const Center();
                }
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
