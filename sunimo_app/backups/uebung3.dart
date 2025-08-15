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
   //=============================== 
  //---rückgabetyp--methode---return----rückgabewert
  State<Swaper> createState() =>  _SwaperState();
   //=============================== 
}
class _SwaperState extends State<Swaper>{
  bool boolSwap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height:700,
        
          child: Column( 
            mainAxisAlignment: boolSwap ? MainAxisAlignment.start : MainAxisAlignment.spaceEvenly,
           // spacing: boolSwap? 30: 10,
            children: [
            SizedBox(height:80),
            Icon(Icons.favorite, color:boolSwap?Colors.amber : Colors.red, size:80,),
            Icon(Icons.favorite, color:Colors.amber, size:80,),
            Icon(boolSwap?Icons.favorite:Icons.star, color:Colors.amber, size:80,),
             //===============================   
                 Checkbox(
                  onChanged: (bool? value) {
                    setState(() {
                    boolSwap = value ?? false;
                    });
                  },
                  value: boolSwap,
                  activeColor: Color(0xFF6200EE),
                ),
          //===============================   
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
                 boolSwap = !boolSwap;
              });
             
            },

            child: Text("  Swap  ",style: TextStyle(fontSize: 20.0),),
          ),
        )
      ],
    );
  }
}
