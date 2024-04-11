import 'package:flutter/material.dart';
import '../Services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
    const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getWorldTime(context) async {
    WorldTime timenow = WorldTime(location: "Berlin", flag: "avatar.png", url: "Europe/Berlin");
    await timenow.getTime();

    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'location': timenow.location,
      'flag': timenow.flag,
      'time': timenow.time
    });
  }


  @override
  void initState() {
    super.initState();
    getWorldTime(context);
   
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 107, 20, 122),
      body: Center(
        child: SpinKitCubeGrid(
        color: Colors.white,
        size: 50.0,
    )
    ));
  }
}
