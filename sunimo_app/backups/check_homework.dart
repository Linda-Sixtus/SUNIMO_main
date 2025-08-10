import 'dart:ffi';

import 'package:flutter/material.dart';

void main (){

runApp(WissensCheck());

}

class WissensCheck extends StatelessWidget{
const WissensCheck ({super.key});

@override
Widget build (BuildContext context){

  return MaterialApp(
   home:Scaffold(

    body: Container(
       width: double.infinity,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       
      
        children: [
            SizedBox(height:90),
          Image.asset("assets/BACKBUTTON.png", scale: 0.4,),

        Container(
          padding: EdgeInsets.only(left: 40,),
          child: CheckText(
            headline: "Vorbereitung",
            subline: "Auf den Wissenscheck 4",
            checked: true,
          ),
        ),
         Container(
          padding: EdgeInsets.only(left: 40,),
          child: CheckText(
            headline: "Durchführung",
            subline: "Des Wissenschecks 4",
            checked: false,
          ),
        ),

        IconSwap()
        ]
      ),
    ),

   ),
  );
}

}

class IconSwap extends StatefulWidget {
  const IconSwap ({
    super.key,
  });
  @override
  State<IconSwap> createState() => _IconSwapState();

}

class _IconSwapState extends State<IconSwap> {
  double space = 15;

  bool swapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                spacing: swapped ? 20 : 10,
                children: [
                  Icon(Icons.favorite, 
                  size: 50,
                  color: Colors.red,
                  ),
                  Icon(Icons.circle, 
                  size: 50,
                  color: Colors.green,
                  ),
                        Icon(Icons.star,
                  size: 60,
                  color: Colors.blue,
                  ),
                ]
              ),
            ]
            ),
        ),
          Container(height: 100),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
            children: [ 
              TextButton(onPressed:() => {
                  setState(() {
            
                    swapped = !swapped;
                  }
                )
              },  
                child: 
                    Text("swap", style: TextStyle(fontSize: 20,)
                    )
        ) ]
          
        )
        ],
      );
   
    
  }
}

class CheckText extends StatelessWidget {
  String? headline;
  String? subline;
  bool? checked;


  CheckText({
    super.key, this.headline, this.subline, this.checked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height:100),
        Checkbox(value: checked ?? false, onChanged: (active) => {  
          checked = !(checked ?? false)
        },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
         [ 
          Text(headline ?? "", 
            style: TextStyle(
            fontSize: 20,
          ),
          ),
          Text(subline ?? "",
          ),
         ]
        ),
    
    
      ],
    );
  }
}

