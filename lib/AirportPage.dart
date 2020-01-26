
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

class AirportPage extends StatefulWidget {
  AirportPage({Key key}) : super(key: key);

  @override
  _AirportPageState createState() => _AirportPageState();
}

class _AirportPageState extends State<AirportPage> {
  @override

  Future getAirportData() async {
    var uri =  new Uri.https("api.laminardata.aero","v1/aerodromes/KIAH/departures",{
      "user_key":'cd3b47fae56ca8f1a2786733e04f957f'
    });

    var response = await http.get(
      uri,
    );
    xml.XmlDocument responseXML = xml.parse(response.body);

    print(responseXML.findAllElements("fx:departureFixTime"));
  }

  Widget build(BuildContext context) {
    getAirportData();
    return SizedBox.shrink();
  }
}