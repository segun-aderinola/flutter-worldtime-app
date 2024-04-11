import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


void main() => runApp( MaterialApp(
  home: Home(),
  
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text("My First App"),
      centerTitle: true,
      backgroundColor: Colors.green[600],
      titleTextStyle: const TextStyle(
        color: Colors.white
        ),
    ),
    body: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.cyan,
          child: const Text('1'),
        ),
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.pinkAccent,
          child: const Text('2'),
        ),
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.amber,
          child: const Text('3'),
        ),
      ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => print("Clicked"),
      backgroundColor: Colors.green[600],
      child: const Text("click", 
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
),
    ),
  );
  }
}
