import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:core';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String temperature1;
  String humid1;
  String ressentie1;
  String air1;
  String weatherstyle1;
  String image1;
  String date1;
  String temperature2;
  String humid2;
  String weatherstyle2;
  String image2;
  String date2;
  String temperature3;
  String humid3;
  String weatherstyle3;
  String image3;
  String date3;
  String temperature4;
  String humid4;
  String weatherstyle4;
  String image4;
  String date4;
  String temperature5;
  String humid5;
  String weatherstyle5;
  String image5;
  String date5;
  String temperature6;
  String humid6;
  String weatherstyle6;
  String image6;
  String date6;
  String temperature7;
  String humid7;
  String weatherstyle7;
  String image7;
  String date7;
  //bool isData = false;
  // _MyAppState(
  //     {this.temperature1,
  //     this.humid1,
  //     this.ressentie1,
  //     this.air1,
  //     this.weatherstyle1,
  //     this.image1,
  //     this.date1,
  //     this.temperature2,
  //     this.humid2,
  //     this.weatherstyle2,
  //     this.image2,
  //     this.date2,
  //     this.temperature3,
  //     this.humid3,
  //     this.weatherstyle3,
  //     this.image3,
  //     this.date3,
  //     this.temperature4,
  //     this.humid4,
  //     this.weatherstyle4,
  //     this.image4,
  //     this.date4,
  //     this.temperature5,
  //     this.humid5,
  //     this.weatherstyle5,
  //     this.image5,
  //     this.date5,
  //     this.temperature6,
  //     this.humid6,
  //     this.weatherstyle6,
  //     this.image6,
  //     this.date6,
  //     this.temperature7,
  //     this.humid7,
  //     this.weatherstyle7,
  //     this.image7,
  //     this.date7});
  recupJSON() async {
    var gethttp = await http.get(
      "https://raw.githubusercontent.com/w-station/pull/master/exemple.json",
      headers: {"Accept": "application/json"},
    );

    if (gethttp.statusCode == 200) {
      String responseBody = gethttp.body;
      var responseJSON = json.decode(responseBody);
      temperature1 = responseJSON['temperature1'];
      temperature2 = responseJSON['temperature2'];
      temperature3 = responseJSON['temperature3'];
      temperature4 = responseJSON['temperature4'];
      temperature5 = responseJSON['temperature5'];
      temperature6 = responseJSON['temperature6'];
      temperature7 = responseJSON['temperature7'];
      humid1 = responseJSON['humid1'];
      humid2 = responseJSON['humid2'];
      humid3 = responseJSON['humid3'];
      humid4 = responseJSON['humid4'];
      humid5 = responseJSON['humid5'];
      humid6 = responseJSON['humid6'];
      humid7 = responseJSON['humid7'];
      ressentie1 = responseJSON['ressentie1'];
      air1 = responseJSON['air1'];
      weatherstyle1 = responseJSON['weatherstyle1'];
      weatherstyle2 = responseJSON['weatherstyle2'];
      weatherstyle3 = responseJSON['weatherstyle3'];
      weatherstyle4 = responseJSON['weatherstyle4'];
      weatherstyle5 = responseJSON['weatherstyle5'];
      weatherstyle6 = responseJSON['weatherstyle6'];
      weatherstyle7 = responseJSON['weatherstyle7'];
      date1 = responseJSON['date1'];
      date2 = responseJSON['date2'];
      date3 = responseJSON['date3'];
      date4 = responseJSON['date4'];
      date5 = responseJSON['date5'];
      date6 = responseJSON['date6'];
      date7 = responseJSON['date7'];
      //isData = true;
      //Weatherstyle 1
      if (weatherstyle1 == "Ensoleillé") {
        image1 = "assets/img/big/Ensoleiller.png";
      } else if (weatherstyle1 == "Éclaircie") {
        image1 = "assets/img/big/Eclaircie.png";
      } else if (weatherstyle1 == "Pluvieux") {
        image1 = "assets/img/big/Pluvieux.png";
      } else if (weatherstyle1 == "Orage") {
        image1 = "assets/img/big/Orage.png";
      } else if (weatherstyle1 == "Nuageux") {
        image1 = "assets/img/big/Nuageux.png";
      } else if (weatherstyle1 == "Canicule") {
        image1 = "assets/img/big/Canicule.png";
      } else if (weatherstyle1 == "Neige") {
        image2 = "assets/img/big/Neige.png";
      }
      //Weatherstyle 2
      if (weatherstyle2 == "Ensoleillé") {
        image2 = "assets/img/small/Ensoleiller.png";
      } else if (weatherstyle2 == "Pluvieux") {
        image2 = "assets/img/small/Pluvieux.png";
      } else if (weatherstyle2 == "Éclaircie") {
        image2 = "assets/img/small/Eclaircie.png";
      } else if (weatherstyle2 == "Orage") {
        image2 = "assets/img/small/Orage.png";
      } else if (weatherstyle2 == "Nuageux") {
        image2 = "assets/img/small/Nuageux.png";
      } else if (weatherstyle2 == "Canicule") {
        image2 = "assets/img/small/Canicule.png";
      } else if (weatherstyle2 == "Neige") {
        image2 = "assets/img/small/Neige.png";
      }
      //Weatherstyle 3
      if (weatherstyle3 == "Ensoleillé") {
        image3 = "assets/img/small/Ensoleiller.png";
      } else if (weatherstyle3 == "Éclaircie") {
        image3 = "assets/img/small/Eclaircie.png";
      } else if (weatherstyle3 == "Pluvieux") {
        image3 = "assets/img/small/Pluvieux.png";
      } else if (weatherstyle3 == "Orage") {
        image3 = "assets/img/small/Orage.png";
      } else if (weatherstyle3 == "Nuageux") {
        image3 = "assets/img/small/Nuageux.png";
      } else if (weatherstyle3 == "Canicule") {
        image3 = "assets/img/small/Canicule.png";
      } else if (weatherstyle3 == "Neige") {
        image3 = "assets/img/small/Neige.png";
      }
      //Weatherstyle 4
      if (weatherstyle4 == "Ensoleillé") {
        image4 = "assets/img/small/Ensoleiller.png";
      } else if (weatherstyle4 == "Éclaircie") {
        image4 = "assets/img/small/Eclaircie.png";
      } else if (weatherstyle4 == "Pluvieux") {
        image4 = "assets/img/small/Pluvieux.png";
      } else if (weatherstyle4 == "Orage") {
        image4 = "assets/img/small/Orage.png";
      } else if (weatherstyle4 == "Nuageux") {
        image4 = "assets/img/small/Nuageux.png";
      } else if (weatherstyle4 == "Canicule") {
        image4 = "assets/img/small/Canicule.png";
      } else if (weatherstyle4 == "Neige") {
        image4 = "assets/img/small/Neige.png";
      }
      //Weatherstyle 5
      if (weatherstyle5 == "Ensoleillé") {
        image5 = "assets/img/small/Ensoleiller.png";
      } else if (weatherstyle5 == "Éclaircie") {
        image5 = "assets/img/small/Eclaircie.png";
      } else if (weatherstyle5 == "Pluvieux") {
        image5 = "assets/img/small/Pluvieux.png";
      } else if (weatherstyle5 == "Orage") {
        image5 = "assets/img/small/Orage.png";
      } else if (weatherstyle5 == "Nuageux") {
        image5 = "assets/img/small/Nuageux.png";
      } else if (weatherstyle5 == "Canicule") {
        image5 = "assets/img/small/Canicule.png";
      } else if (weatherstyle5 == "Neige") {
        image5 = "assets/img/small/Neige.png";
      }
      //Weatherstyle 6
      if (weatherstyle6 == "Ensoleillé") {
        image6 = "assets/img/small/Ensoleiller.png";
      } else if (weatherstyle6 == "Éclaircie") {
        image6 = "assets/img/small/Eclaircie.png";
      } else if (weatherstyle6 == "Pluvieux") {
        image6 = "assets/img/small/Pluvieux.png";
      } else if (weatherstyle6 == "Orage") {
        image6 = "assets/img/small/Orage.png";
      } else if (weatherstyle6 == "Nuageux") {
        image6 = "assets/img/small/Nuageux.png";
      } else if (weatherstyle6 == "Canicule") {
        image6 = "assets/img/small/Canicule.png";
      } else if (weatherstyle6 == "Neige") {
        image6 = "assets/img/small/Neige.png";
      }
      //Weatherstyle 7
      if (weatherstyle7 == "Ensoleillé") {
        image7 = "assets/img/small/Ensoleiller.png";
      } else if (weatherstyle7 == "Éclaircie") {
        image7 = "assets/img/small/Eclaircie.png";
      } else if (weatherstyle7 == "Pluvieux") {
        image7 = "assets/img/small/Pluvieux.png";
      } else if (weatherstyle7 == "Orage") {
        image7 = "assets/img/small/Orage.png";
      } else if (weatherstyle7 == "Nuageux") {
        image7 = "assets/img/small/Nuageux.png";
      } else if (weatherstyle7 == "Canicule") {
        image7 = "assets/img/small/Canicule.png";
      } else if (weatherstyle7 == "Neige") {
        image7 = "assets/img/small/Neige.png";
      }
      setState(() {
        print('UI Updated');
      });
    } else {
      print('Something went wrong. \nResponse Code : ${gethttp.statusCode}');
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['temperature1'] = this.temperature1;
  //   data['humid1'] = this.humid1;
  //   data['ressentie1'] = this.ressentie1;
  //   data['air1'] = this.air1;
  //   data['weatherstyle1'] = this.weatherstyle1;
  //   data['date1'] = this.date1;
  //   data['temperature2'] = this.temperature2;
  //   data['humid2'] = this.humid2;
  //   data['weatherstyle2'] = this.weatherstyle2;
  //   data['date2'] = this.date2;
  //   data['temperature3'] = this.temperature3;
  //   data['humid3'] = this.humid3;
  //   data['weatherstyle3'] = this.weatherstyle3;
  //   data['date3'] = this.date3;
  //   data['temperature4'] = this.temperature4;
  //   data['humid4'] = this.humid4;
  //   data['weatherstyle4'] = this.weatherstyle4;
  //   data['date4'] = this.date4;
  //   data['temperature5'] = this.temperature5;
  //   data['humid5'] = this.humid5;
  //   data['weatherstyle5'] = this.weatherstyle5;
  //   data['date5'] = this.date5;
  //   data['temperature6'] = this.temperature6;
  //   data['humid6'] = this.humid6;
  //   data['weatherstyle6'] = this.weatherstyle6;
  //   data['date6'] = this.date6;
  //   data['temperature7'] = this.temperature7;
  //   data['humid7'] = this.humid7;
  //   data['weatherstyle7'] = this.weatherstyle7;
  //   data['date7'] = this.date7;
  //   data[image1]= this.image1;
  //   data[image2]= this.image2;
  //   data[image3]= this.image3;
  //   data[image4]= this.image4;
  //   data[image5]= this.image5;
  //   data[image6]= this.image6;
  //   data[image7]= this.image7;
  //   return data;
  // }

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    super.initState();
    recupJSON();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xffb4B0082),
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                //color: Colors.blueAccent,
                onPressed: () => exit(0),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent, //Color(0xffb005C96),
              title: Text("Wstation"),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.refresh),
                    //color: Colors.green,
                    onPressed: () {
                      recupJSON();
                    }),
              ],
            ),
            body: Center(
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.transparent)),
                          color: Colors.blue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.blueAccent,
                          onPressed: () {},
                          child: Text(
                            ("Air: " + air1 + "/10 " + ressentie1 + "°C"),
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                        //SizedBox(width: 100),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.transparent)),
                          color: Colors.blue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.blueAccent,
                          onPressed: () {},
                          child: Text(
                            ("Humidité: " + humid1 + "%"),
                            style: TextStyle(fontSize: 17.0),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Text(date1,
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 26)),
                          Text(("Maison "),
                              style: new TextStyle(
                                  color: Colors.green, fontSize: 42.0)),
                          // Text((temperature1 + "°C " + humid1 + "% "),
                          //     style: new TextStyle(
                          //         color: Colors.purple,
                          //         fontSize: 25,
                          //         fontStyle: FontStyle.italic)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.purple,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    ("Température: " + temperature1 + "°C"),
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ]),
                          Image.asset(image1, scale: 1.1),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 205,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 135.0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text((weatherstyle2),
                                    style: new TextStyle(
                                        color: Colors.black, fontSize: 24.0)),
                                // Text((temperature2 + "°C " + humid2 + "%\n"),
                                //     style: new TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold)),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    (temperature2 + "°C " + humid2 + "%"),
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Image.asset(image2),
                                Text(("\n" + date2),
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic)),
                              ],
                            ))),
                    Container(
                        width: 135.0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text((weatherstyle3),
                                    style: new TextStyle(
                                        color: Colors.black, fontSize: 24.0)),
                                // Text((temperature3 + "°C " + humid3 + "%\n"),
                                //     style: new TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold)),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    (temperature3 + "°C " + humid3 + "%"),
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Image.asset(image3),
                                Text(("\n" + date3),
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic)),
                              ],
                            ))),
                    Container(
                        width: 135.0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text((weatherstyle4),
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                    )),
                                // Text((temperature4 + "°C " + humid4 + "%\n"),
                                //     style: new TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold)),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    (temperature4 + "°C " + humid4 + "%"),
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Image.asset(image4),
                                Text(("\n" + date4),
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic)),
                              ],
                            ))),
                    Container(
                        width: 135.0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text((weatherstyle5),
                                    style: new TextStyle(
                                        color: Colors.black, fontSize: 24.0)),
                                // Text((temperature5 + "°C " + humid5 + "%\n"),
                                //     style: new TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold)),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    (temperature5 + "°C " + humid5 + "%"),
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Image.asset(image5),
                                Text(("\n" + date5),
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic)),
                              ],
                            ))),
                    Container(
                        width: 135.0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text((weatherstyle6),
                                    style: new TextStyle(
                                        color: Colors.black, fontSize: 24.0)),
                                // Text((temperature6 + "°C " + humid6 + "%\n"),
                                //     style: new TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold)),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    (temperature6 + "°C " + humid6 + "%"),
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Image.asset(image6),
                                Text(("\n" + date6),
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic)),
                              ],
                            ))),
                    Container(
                        width: 135.0,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text((weatherstyle7),
                                    style: new TextStyle(
                                        color: Colors.black, fontSize: 24.0)),
                                // Text((temperature7 + "°C " + humid7 + "%\n"),
                                //     style: new TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold)),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {},
                                  child: Text(
                                    (temperature7 + "°C " + humid7 + "%"),
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Image.asset(image7),
                                Text(("\n" + date7),
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic)),
                              ],
                            ))),
                  ],
                ),
              ))
            ]))));
  }
}
