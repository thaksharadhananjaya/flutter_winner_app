import 'package:flutter/material.dart';
import 'package:winner_app/timeRemaining.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  var p =["1st Place", "2nd Place", "3rd Place"];

  @override
  Widget build(BuildContext context) {

    int boxWidth = MediaQuery.of(context).size.width.toInt();
    int boxHeight = MediaQuery.of(context).size.width.toInt();
    //double boxtimerHeight = boxHeight*0.45;
    double prizeBox=boxHeight/2;

    Orientation orientation=MediaQuery.of(context).orientation;

    if(orientation==Orientation.landscape){
      boxWidth = MediaQuery.of(context).size.height.toInt();
      boxHeight=(boxHeight*0.35).toInt();
      //boxtimerHeight = boxtimerHeight*0.38;
      prizeBox=boxHeight/2.8;
    }
    //double timeMargin=boxHeight/2 +30;
    print('Height: $boxHeight');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Container(
            width: boxWidth.toDouble(),
            height: boxHeight.toDouble(),
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(
                    color: Colors.black45,
                    offset: Offset(2, 2),
                    blurRadius: 12
                )
                ]
            ),
            child: Column(
              children: [
                SizedBox(
                  height: prizeBox+15,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 2, left: 2),
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext, int index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                            child: Stack(
                              children: [
                                AnimatedContainer(
                                  width: prizeBox,
                                  height: prizeBox ,
                                  duration: Duration(seconds: 1),
                                  curve:Curves.easeInSine,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(2, 2),
                                          blurRadius: 2
                                      )
                                      ]
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(
                                          child: Image.asset("asset/${index+1}.png",fit:BoxFit.scaleDown,)),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: boxHeight/2,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),),

                                          ),
                                          child: Center(child:
                                          Text(p[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          );
                        }
                    ),
                  ),
                ),
                TimeRemaining(),
              ],
            )
        ),
      ),
    );

  }

}