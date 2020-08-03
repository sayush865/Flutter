import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurpleAccent,
            child: Column(
              children: <Widget> [
                  Row(
                 children: <Widget>[


                  Expanded(child: Text(
                    "F",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                          decoration: TextDecoration.none,
                  fontSize: 35,
                  fontFamily: 'Trajan Pro',
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                    ),

                    )),

                  Expanded(child: Text(

                  "Flight", textDirection: TextDirection.ltr,
                   style: TextStyle(
                   decoration: TextDecoration.none,
                    fontSize: 35,
                      fontFamily: 'Trajan Pro',
                     fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),

                )),
                 ]
                ),
                  Row(
                      children: <Widget> [


                        Expanded(child: Text(
                    "F",
                      textDirection: TextDirection.ltr,
                       style: TextStyle(
                         decoration: TextDecoration.none,
                         fontSize: 35,
                        fontFamily: 'Trajan Pro',
                        fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),

                      )),

                      Expanded(child: Text(

                        "Flight", textDirection: TextDirection.ltr,
                        style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: 'Trajan Pro',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        ),

                          )
                             )
                        ]
                          ),
              //  FlightImageAsset()
                FlightButton()



                          ])

    )
    );



}
}

//class FlightImageAsset extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    AssetImage assetImage = AssetImage();
//    Image image = Image(image: assetImage
//    width: 250,
//    height: 300,);
//    return Container(child: image,);
//
//  };

class FlightButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      height: 50.0,
      width: 200.0,
      child: RaisedButton(
        onPressed: (){
          bookFlight(context);
          
        },
        color: Colors.amberAccent,
        child: Text(
          "Book your Flight",
              style: TextStyle(
            fontSize: 20.0,
          color: Colors.deepPurpleAccent,
        ),
        ),
          elevation: 36,

      ),


    );

  }
}

void bookFlight(BuildContext context) {

  var alertDialog = AlertDialog(
    title: Text("Flight booked"),
    content: Text("Have a pleasant flight"),
  );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });


}