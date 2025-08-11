import 'package:flutter/material.dart';

class MenueCard extends StatelessWidget {
  final String title;
  final Widget? imageButton;
  final GestureTapCallback? onClick;

  const MenueCard({
    super.key,
    required this.title,
    this.imageButton,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 107,
              width: 369,
              padding: EdgeInsets.only(left: 30, top: 5, right: 30, bottom: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB( 255, 255, 255, 255), // Endfarbe (unten)
                border: Border.all(
                  color: const Color.fromARGB(255, 220, 187, 239),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: imageButton == null
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: imageButton != null ? () {} : onClick,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: TextStyle(
                          //GoogleFonts.inter
                          //Hier noch fontstyle font und bold
                          color: Color.fromARGB(
                            255,
                            156,
                            128,
                            193,
                          ).withAlpha(255),
                          fontSize: 45,
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: onClick, child: imageButton ?? Container()),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
