import 'dart:async';

import 'package:flutter/material.dart';


class TimeRemaining extends StatefulWidget {

  @override
  _TimeRemainingState createState() => _TimeRemainingState();
}


class _TimeRemainingState extends State<TimeRemaining> {
  DateTime startDate=DateTime(2020,9,30,16,0,0);
  DateTime toDay=DateTime.now();
  


  Timer _timer;
  int timerState=0;

  int sec=0;
  int min=0;
  int hour=0;
  int day=0;

  void startTimer() {
    final defferance=startDate.difference(toDay);
    sec=(defferance.inSeconds.toInt())-((defferance.inMinutes.toInt())*60);
    min=(defferance.inMinutes.toInt())-((defferance.inHours.toInt())*60);
    hour=(defferance.inHours.toInt())-((defferance.inDays.toInt())*24);
    day=defferance.inDays;

    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (sec < 1) {
            sec=59;
            if(min<1){
              min=59;
              if(hour<1){
                hour=24;
                if(day<1){
                  timer.cancel();
                  sec=0;
                  min=0;
                  hour=0;
                  day=0;
                }else{
                  day--;
                }
              }else{
                hour--;
              }
            }else{
              min--;
            }
          } else {
            sec = sec-1;
           // print("$sec");
          }
        },
      ),
    );
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    if(timerState==0){
      startTimer();
      timerState=1;
    }
    //print('$toDay');
    int boxHeight = MediaQuery.of(context).size.width.toInt();
    double boxtimerHeight = boxHeight * 0.45;

    return Container(
      height: boxtimerHeight,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Time Remaining',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: boxHeight * 0.2,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid)

                    ),

                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(

                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Day',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Center(
                              child: Text('$day',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: boxHeight * 0.2,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid)

                    ),

                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(

                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Hour',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Center(
                              child: Text('$hour',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: boxHeight * 0.2,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid)

                    ),

                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(

                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Minute',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Center(
                              child: Text('$min',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: boxHeight * 0.2,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid)

                    ),

                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(

                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text('Second',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Center(
                              child: Text('$sec',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Colors.red, Colors.orange]),
                        boxShadow: [BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 2),
                            blurRadius: 2
                        )
                        ]
                    ),
                    child: FlatButton(onPressed: () {},
                      child: Text("Join Now", style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                      ),)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}