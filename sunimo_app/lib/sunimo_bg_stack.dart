import 'package:flutter/material.dart';

class SunimoBGStack extends StatelessWidget
{

  final String imagePath;
  final List<Widget> children;

  const SunimoBGStack(this.imagePath, {required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath),  fit: BoxFit.cover,)
        ),
        child:  Stack(
            clipBehavior: Clip.none,
            // fit: StackFit.expand, // ???
            children: children,
        )
    );
  }
}