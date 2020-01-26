import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final dayController = new TextEditingController();
final monthController = new TextEditingController();
final yearController = new TextEditingController();
final airportController = new TextEditingController();

class FlightAdd extends StatelessWidget{
  Color barColor = Colors.redAccent;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flight Select'),
              backgroundColor: barColor,
            ),
            body: new ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 340,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Airport", style: TextStyle(color: Colors.black45),),
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 330,
                        child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 165,
                                  child: TextField(
                                    textCapitalization: TextCapitalization.characters,
                                    maxLength: 3,
                                    controller: airportController,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ],
                            )
                        )
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 340,
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 112,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Day", style: TextStyle(color: Colors.black45),),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 112,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Month", style: TextStyle(color: Colors.black45),),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 112,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Year", style: TextStyle(color: Colors.black45),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 330,
                        child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(

                                  height: 40,
                                  width: 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 2,
                                    controller: monthController,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 40,
                                  width: 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 2,
                                    controller: dayController,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  height: 40,
                                  width: 100,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 4,
                                    controller: yearController,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
  String dateRet = monthController.toString()+dayController.toString()+yearController.toString();
  String iataCode = airportController.toString();
}
