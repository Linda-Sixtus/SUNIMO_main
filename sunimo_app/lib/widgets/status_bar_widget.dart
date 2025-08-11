import 'package:flutter/material.dart';

class StatusBarWidget extends StatelessWidget {
  final String name;
  final double value;
  final double max;
  final Color color;

  const StatusBarWidget(
    this.name, {
    super.key,
    required this.color,
    this.value = 0,
    this.max = 100,
  });

  @override
  Widget build(BuildContext context) {
    double imageWidth = (170 / max) * value;

    if (imageWidth > 170) {
      imageWidth = 170;
    }
    if (imageWidth < 0) {
      imageWidth = 0;
    }

    return Stack(
      children: [
        Image.asset("assets/Kapsel_leer.png"),
        Transform.translate(
          offset: Offset(50, 15),
          child: SizedBox(
            width: 80,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                name,
                /// style: Theme.of(context).textTheme.bodyMedium,
                style: TextStyle(
                  fontSize: 13,
                  color: const Color.fromARGB(255, 120, 74, 138),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        // THE LIQUID
        Transform.translate(
          offset: Offset(142, 16.5),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
            child: Stack(
              children: [
                Image.asset(
                  "assets/Kapsel_liquid.png",
                  width: imageWidth,
                  fit: BoxFit.fill,
                  height: 16,
                  color: (imageWidth < 40)
                      ? Colors.red
                      : color, //.withAlpha(170),
                ),
                Image.asset(
                  "assets/Kapsel_bubble.png",
                  width: imageWidth,
                  fit: BoxFit.cover,
                  height: 16,
                  color: Colors.white.withAlpha(100),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
