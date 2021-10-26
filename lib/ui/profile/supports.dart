import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';

class Supports extends StatefulWidget {
  const Supports({ Key? key }) : super(key: key);

  @override
  _SupportsState createState() => _SupportsState();
}

class _SupportsState extends State<Supports> {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Container(
        width: s.width,
        height: s.height/2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Clr.HomePageText,
        ),
        
        child: Column(
          children: [
            Expanded(child: ListView(
              children: [
                Text("Destekleyenler",style: TextStyle(color:Colors.white,fontSize: 19,fontFamily: 'Metropolis'))
              ],
            ))
          ],
        ),
      
    );
  }
}