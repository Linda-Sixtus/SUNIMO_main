import 'package:flutter/material.dart';

void main() {
  runApp(const SunimoApp(title: 'SunimoApp'));
}


class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/opening_BG.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
    );
  }
}


class SunimoApp extends StatelessWidget {
  const SunimoApp({super.key, required this.title});

  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sunimo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
           appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,

            title: Text(title),
          ),
          body: Center(
            child:
              Stack(
                children: [
                 // BgImage(),
                  MyHomePage(title: title),
                ],
              )
          ),
           floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            tooltip: 'Increment',
            child: Image.asset('assets/Ei.png', width: 30, height: 30),
          ), //
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        )
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;




  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Ei.png',
                    width: 200,
                    
                    alignment: Alignment.center,
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Text('Sometimes the destiny chooses you..'),
              Text(
                "You have to choose your own path",
                style: Theme.of(context).textTheme.headlineSmall,

                //'$_counter', style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      );
  }
}
