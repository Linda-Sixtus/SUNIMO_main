import 'package:flutter/material.dart';
import 'package:sunimo_app/models/product.dart';

class ProductCardWidget extends StatelessWidget {
  final Product? productItem;

  const ProductCardWidget({super.key, required this.productItem});
  final String defaultImagePath = 'assets/items/UNKNOWN.png';

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: () => Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => PostViewPage(galleryItem: productItem),
    //     ),
    //   ),
    //child:
    return Card(
      elevation: 8.0, // Schatten für die Karte
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15.0,
        ), // Abgerundete Ecken der Karte
      ),
      clipBehavior: Clip
          .antiAlias, // Stellt sicher, dass der Inhalt innerhalb der abgerundeten Ecken bleibt
      child: Container(
        //clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 220, 187, 239),
            width: 4,
          ),

          borderRadius: BorderRadius.circular(16.0), // Abgerundete Ecken
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Icon(Icons.heart_broken_outlined, size: 50, color: Colors.grey[400]), // Platzhalter-Icon
            Expanded(
              // Bild nimmt den verfügbaren Platz ein
              child: productItem?.productImage ?? Image.asset(defaultImagePath),
            ),
            // Textbereich (weißgrau)
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                color: Colors.grey[50],
              ),
              // Weißgrauer Hintergrund
              padding: const EdgeInsets.all(12.0), // Innenabstand für den Text
              child: SizedBox(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productItem?.productName ?? "Error",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                      maxLines: 1,
                      overflow:
                          TextOverflow.ellipsis, // Text abschneiden, wenn zu lang
                    ),
                    const SizedBox(height: 4.0), // Kleiner Abstand
                    Text(
                      productItem?.description ?? "Product not found",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                      maxLines: 2, // Beschränkung auf 2 Zeilen
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
