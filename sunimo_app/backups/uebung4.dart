import 'package:flutter/material.dart';

void main (){
  runApp(TestApp()); 
}

class TestApp extends StatelessWidget{
  const TestApp ({super.key});
  @override
  Widget build(BuildContext context){
  
      return MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: Scaffold(
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(5.5),

            child: Container(
                
              child: 
              Swaper(),
            
            ),
            
          ),
          
        )
      );
  }
}

class Swaper extends StatefulWidget {
  const Swaper({
    super.key,
  });
  @override
  State<Swaper> createState() =>  SwaperState();
}
class SwaperState extends State<Swaper>{
  double doubleSwap = 0;
  bool direction = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height:700,
          child: Column( 
            spacing: doubleSwap,
            children: [
            SizedBox(height:80),
            Icon(Icons.favorite, color:Color.fromARGB(255, doubleSwap.toInt()*2, 50, 50), size:80,),
            Icon(Icons.favorite, color:Color.fromARGB(255, 50, doubleSwap.toInt()*2, 50), size:80,),
            Icon(Icons.favorite, color:Color.fromARGB(255, 50, 50, doubleSwap.toInt()*2), size:80,),
          ]
          )
        ),
        Container(
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.5),
          ),
          child: FloatingActionButton(
            
            onPressed: () {
              setState(() {
                 direction ? doubleSwap -= 10: doubleSwap += 10;
                 if (doubleSwap < 10) {
                    direction = false;
                  }
                  if (doubleSwap > 100) {
                    direction = true; 
                  } 
              });
             
            },
            child: Text("  Swap  ",style: TextStyle(fontSize: 20.0),),
          ),
        )
      ],
    );
  }
}
