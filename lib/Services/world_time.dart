import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {

  String location = '';
  String time = '';
  String flag = '';
  String url = '';

  WorldTime({required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    
    try {
       // call worldtime endpoint
    String endpointUrl = "https://worldtimeapi.org/api/timezone/$url";
    Response response = await get(Uri.parse(endpointUrl));
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // convert to datetime
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    
    // set the time to the time variable
    time = DateFormat.jm().format(now);
    } catch (e) {
      time = "unable to fetch data";
    }
   
  }
}
