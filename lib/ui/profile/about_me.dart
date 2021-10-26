import 'package:arialist/auth/colors.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  List Ability = ["Gitar", "Keman", "Piyano"];
  // _value değeri çekilecek olan veriden başlangıç değeri alınacak.
  List degervalue = [3, 1, 2];
  int value= 2;
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Clr.HomePageText
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(children: [
              const Padding(
                padding: EdgeInsets.only(left:15.0),
                child: Text("İlgi ve Yetenekler",style: TextStyle(color:Colors.white,fontSize: 17,fontFamily: 'Metropolis')),
              ),
              Row(
              children: [
                Text("gitar"),
                Spacer(),
                SizedBox(
                  width: s.width / 3,
                  child: Slider(
                      value: value.toDouble(),
                      min: 1.0,
                      max: 10.0,
                      divisions: 10,
                      activeColor: Clr.bgGreen,
                      inactiveColor: Clr.sliderInactiveColor,
                      label: "${value}",
                      onChanged: (double newValue) {
                        setState(() {
                          value = newValue.round();
                        });
                      },
                      semanticFormatterCallback: (double newValue) {
                        return '${newValue.round()} dollars';
                      }),
                ),
              ],
            ),
            const Padding(
              padding:  EdgeInsets.all(15.0),
              child: Text("Eğitim ve Deneyim",style: TextStyle(color:Colors.white,fontSize: 17,fontFamily: 'Metropolis')),
            ),
            const Padding(
              padding:EdgeInsets.all(15.0),
              child: Text("İletişim Bilgileri",style: TextStyle(color:Colors.white,fontSize: 17,fontFamily: 'Metropolis')),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Sosyal Medya Hesapları",style: TextStyle(color:Colors.white,fontSize: 17,fontFamily: 'Metropolis')),
            ),
            ]),
          ),
          
          
        ],
      ),
    );
  }
}
