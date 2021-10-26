import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:winner_app/pofile.dart';

import 'home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.red[800], statusBarColor: Colors.black12  )
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,]
    );
    return MaterialApp(
      title: 'Winner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {

    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    print(Height);

    return Scaffold(
      body: Stack(
          children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top:200.0),
              child: IconButton(icon: Icon(
                        Icons.info,
                color:Colors.white,),
                  onPressed: (){}),
            ),
          ),
          Container(
            height: Height,
            width: Width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
            ),
            child: selectedIndex==0? Home() : (selectedIndex==1?Home(): (selectedIndex==2?Home():Pofile())),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              color: Colors.red,
              index: 0,
              //animationDuration: 200.0,
              items: <Widget>[
                Icon(Icons.home, size: 30, color: Colors.white),
                Icon(Icons.assignment, size: 30, color: Colors.white),
                Icon(Icons.card_giftcard, size: 30, color: Colors.white),
                Icon(Icons.person, size: 30, color: Colors.white),
              ],
              onTap: (index) {
                setState((){
                  setState(() =>selectedIndex=index);
                  //;
                }
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
