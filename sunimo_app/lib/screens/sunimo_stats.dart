import 'package:flutter/material.dart';
import 'package:sunimo_app/widgets/status_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunimo_app/models/characters.dart';

class SunimoStats extends StatelessWidget {
  final Sunimo? sunimo;
  const SunimoStats({super.key, required this.sunimo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 254, 221, 255), // Startfarbe (oben)
              const Color.fromARGB(255, 226, 242, 252), // Endfarbe (unten)
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 107,
                    width: 369,
                    padding: EdgeInsets.only(
                      left: 30,
                      top: 5,
                      right: 30,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB( 255, 255, 255, 255), // Endfarbe (unten)
                      border: Border.all(
                        color: const Color.fromARGB(255, 220, 187, 239),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sunimo?.name ?? "No Sunimo",
                          style: TextStyle(
                            //GoogleFonts.inter
                            //Hier noch fontstyle font und bold
                            color: Color.fromARGB( 255, 156, 128, 193),
                            fontSize: (sunimo?.name.length ?? 9) < 8 ? 45 : 38,
                          ),
                        ),
                        InkWell(
                          onTap: () => {Navigator.pop(context)},
                          child: Image(
                            alignment: Alignment.centerRight,
                            image: AssetImage('assets/BACKBUTTON.png'),
                            width: 78,
                            height: 78,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 5,
                  right: 30,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB( 255, 156, 128, 193,).withAlpha(255),
                      ),
                    ),
                    Text(
                      "Alter",
                      style: GoogleFonts.inter(
                        //GoogleFonts.inter
                        //Hier noch fontstyle font und bold
                        color: const Color.fromARGB(255, 156, 128, 193,).withAlpha(255),
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.only(
                        left: 6.0,
                        top: 3.0,
                        right: 6.0,
                        bottom: 3.0,
                      ),
                      alignment: Alignment.centerRight,
                      //S width: 80,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 247, 248),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        sunimo?.age == 1 ? "1 Tag" : "${sunimo?.age} Tage",
                        style: TextStyle(
                          color: const Color.fromARGB( 255, 94, 74, 121,).withAlpha(255),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Image(
                      alignment: Alignment.centerRight,
                      image: AssetImage('assets/Back_Button.png'),
                      width: 65,
                      height: 65,
                    ),
                    SizedBox(width: 25),
                    Image(
                      alignment: Alignment.centerRight,
                      image: AssetImage('assets/Weiter_Button.png'),
                      width: 65,
                      height: 65,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              sunimo?.getAppearance() ?? Container(),
              SizedBox(height: 20),
              StatusBarWidget(
                "Gesundheit",
                color: Color.fromARGB(255, 50, 235, 220),
                value: sunimo?.gesundheit ?? 0,
              ),
              SizedBox(height: 10),
              StatusBarWidget(
                "Hunger",
                color: Color.fromARGB(255, 137, 196, 244),
                value: sunimo?.hunger ?? 0,
              ),
              SizedBox(height: 10),
              StatusBarWidget(
                "Hygiene",
                color: Color.fromARGB(255, 240, 161, 218),
                value: sunimo?.hygiene ?? 0,
              ),
              SizedBox(height: 10),
              StatusBarWidget(
                "Notdurft",
                color: Color.fromARGB(255, 247, 239, 173),
                value: sunimo?.notdurft ?? 0,
              ),
              SizedBox(height: 10),
              StatusBarWidget(
                "Zuneigung",
                color: Color.fromARGB(255, 212, 149, 244),
                value: sunimo?.zuneigung ?? 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
