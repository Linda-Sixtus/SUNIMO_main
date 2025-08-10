import 'package:flutter/material.dart';
import 'package:sunimo_app/screens/shop_category_page.dart';
import 'package:sunimo_app/widgets/menue_card.dart';
import 'package:sunimo_app/models/characters.dart';
import 'sunimo_stats.dart';
import 'inventory.dart';

class Menue extends StatelessWidget{
  final Sunimo sunimo;
  const Menue({super.key, required this.sunimo});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              const Color.fromARGB(255, 254, 221, 255).withAlpha(255), 
              const Color.fromARGB(255, 226, 242, 252).withAlpha(255), 
              ],
            ),
            ),
            child: Center(
              child: Column(
                children: [
                Container(   
                  height: 60,
                  width: 500,           
                  decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255).withAlpha(255),
                  ),
                    ),
                SizedBox(
                  height: 30),
                MenueCard(
                  title: "Menue", 
                  imageButton: Image(
                  alignment: Alignment.centerRight,
                  image: AssetImage('assets/BACKBUTTON.png'),
                  width: 78,
                  height: 78,
                  ),
                  onClick: () => {
                    Navigator.pop(context)
                  },
                ),
                 Image.asset(
                "assets/menue_image.png",
                height: 355,
                  ),
                  MenueCard(
                  title: "Sunimo", 
                 onClick: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SunimoStats(sunimo: ai))
                      );
                },
                ),
                MenueCard(
                  title: "Settings", 
                 onClick: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inventory()))
                  },
                ),
                 MenueCard(
                  title: "Shop", 
                  onClick: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopCategoryPage()))
                  },
                ),
              ],
            )
      )
    )
    );
  }
}
