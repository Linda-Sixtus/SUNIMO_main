import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunimo_app/models/shop_category.dart';
import 'package:sunimo_app/screens/shop_sparte.dart';

class ShopCategoryItem extends StatelessWidget {
  final ShopCategory category;

  const ShopCategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Container(
            alignment: Alignment.center,
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              color: Color.fromARGB(110, 255, 255, 255),
              border: Border.all(
                width: 4, 
                color: Color.fromARGB(255, 195, 155, 220),
              ),
              borderRadius: BorderRadius.all(Radius.circular(18))
            ),
            child: category.categoryImage,
          ),
          //SizedBox(width:15),
          Container(
            alignment: Alignment.center,
            height: 110,
            width: 270,
            decoration: BoxDecoration(
              color: Color.fromARGB(110, 255, 255, 255),
              border: Border.all(
                width: 4, 
                color: Color.fromARGB(255, 195, 155, 220),
              ),
              borderRadius: BorderRadius.all(Radius.circular(18))
            ),
            child: 
            InkWell(
              child: Text(category.categoryName, 
              style: GoogleFonts.inter(
                fontSize: 40, 
                fontWeight: FontWeight.w700, 
                color: Color.fromARGB(255, 102, 58, 122) 
                ),
              ),
              onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShopSparte(category: category),
                    ),
                  );
              },
            )
          ),
         
        ],
      ),
    );
  }
}
