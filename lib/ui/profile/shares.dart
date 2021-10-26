import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';

class Shares extends StatefulWidget {
  const Shares({ Key? key }) : super(key: key);

  @override
  _SharesState createState() => _SharesState();
}

class _SharesState extends State<Shares> {
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
            Expanded(
              child: ListView(
                children: [Padding(
                  padding:EdgeInsets.only(left:15.0,right: 15.0),
                  child: Row(children: [
                    const Text("Kendi Eserlerim",style: TextStyle(color:Colors.white,fontSize: 19,fontFamily: 'Metropolis')),
                    const Spacer(),
                    TextButton(
                                  onPressed: () {},
                                  child: const Text("Oluştur",
                                     style: TextStyle(color:Colors.white,fontSize: 17,fontFamily: 'Metropolis')),),
                  ],),
                ),
                Padding(
              padding:EdgeInsets.all(15.0),
              child: Row(children: [
                const Text("Yorumladıklarım",style: TextStyle(color:Colors.white,fontSize: 19,fontFamily: 'Metropolis')),
                const Spacer(),
                TextButton(
                              onPressed: () {},
                              child: const Text("Oluştur",
                                 style: TextStyle(color:Colors.white,fontSize: 17,fontFamily: 'Metropolis')),),
              ],),
            ),],
                

              ),
            ),
            
          ],
        ),
      
    );
  }
}