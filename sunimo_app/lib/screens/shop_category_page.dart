import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunimo_app/repositories/shop_categories_repo.dart';
import 'package:sunimo_app/widgets/shop_category_item.dart';

class ShopCategoryPage extends StatelessWidget {
  const ShopCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // BACKGROUND SIMPLE
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
                clipBehavior: Clip.none,
                height: 122,
                width: 500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 0,
                    top: 0,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(80, 236, 223, 213),
                              blurRadius: 5,
                              offset: Offset(3, 3),
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                        child: Card(
                          //elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ), // Abgerundete Ecken
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(
                                30,
                              ), // Abgerundete Ecken
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/Currency_icon.png"),
                                  SizedBox(),
                                  Text(
                                    " 1.300 ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 30, 29, 31),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, 5),
                        child: Text(
                          "    Shop    ",
                          style: GoogleFonts.inter(
                            color: Color.fromARGB(255, 80, 45, 96),
                            fontSize: 46.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-8, 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset("assets/BACKBUTTON_border.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),



               SizedBox(
                height: 820,
                width: double.infinity,
                 child: ListView(
                     children: 
                        ShopCategoriesRepo().getCategoryItems(),
                    ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
