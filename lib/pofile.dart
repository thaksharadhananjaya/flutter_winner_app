import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pofile extends StatefulWidget {

  @override
  _PofileState createState() => _PofileState();
}


class _PofileState extends State<Pofile> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double p=MediaQuery.of(context).devicePixelRatio;
    double heightR=height*p;
    print(height*p);
    print(width*p);

    return heightR>1720?ultraHD(width): (heightR==1720?fullHD(width):(heightR>=1280?HD(width):SD(width)));

  }

  ultraHD(double width){
    return Padding(
        padding: const EdgeInsets.only(top: 50,left: 45,right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: CircleAvatar(
                radius: 78,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/a.png"),
                  radius: 75,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Android User",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1,bottom: 36),
              child: Text("+94776789021",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.person_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Personal",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                              )
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.history, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("History ",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                              )
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.content_paste, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Rules of Game ",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                              )
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.share, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Invite Friends",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                              )
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.info_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("About Us ",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                              )
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:120.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Log out ",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                              )
                            ),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        )
    );
  }

  fullHD(double width) {
    return Padding(
        padding: const EdgeInsets.only(top: 50,left: 45,right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/a.png"),
                radius: 75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Android User",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1,bottom: 36),
              child: Text("+94776789021",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.person_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Personal",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.history, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("History ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.content_paste, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Rules of Game ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.share, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Invite Friends",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.info_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("About Us ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:120.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Log out ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        )
    );
  }

  HD(double width) {
    return Padding(
        padding: const EdgeInsets.only(top: 50,left: 45,right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/a.png"),
                radius: 75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Android User",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1,bottom: 36),
              child: Text("+94776789021",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
               // color: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.person_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Personal",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.history, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("History ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.content_paste, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Rules of Game ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.share, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Invite Friends",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.info_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("About Us ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:120.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Log out ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        )
    );
  }

  SD(double width) {
    return SingleChildScrollView(
      //physics: ScrollPhysics(),
      child: Padding(
          padding: const EdgeInsets.only(top: 36,left: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/a.png"),
                  radius: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text("Android User",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1,bottom: 20),
                child: Text("+94776789021",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 9,
                    //fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                //color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        height: 40,
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.person_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Personal",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),


                      Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        height: 40,
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.history, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("History ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        height: 40,
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.content_paste, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Rules of Game ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),

                      Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        height: 40,
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.share, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("Invite Friends",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),

                      Container(
                        alignment: Alignment.bottomLeft,
                        width: width.toDouble(),
                        height: 40,
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.info_outline, color: Colors.white,),
                          label: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text("About Us ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        decoration:BoxDecoration(
                          //color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(20),
                            border: Border(bottom: BorderSide(color: Colors.white30))

                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom:120.0),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          width: width.toDouble(),
                          height: 40,
                          child: FlatButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                            label: Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: Text("Log out ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }

}