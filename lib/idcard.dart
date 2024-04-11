import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


void main() => runApp( MaterialApp(
  theme: ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    ),
  home: Home(),
  
));


class Home extends StatefulWidget {
  //int currentLevel = 0;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentLevel = 0;
  String name = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text("ID Card"),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 102, 100, 100),
      elevation: 0.0,
      titleTextStyle: const TextStyle(
        color: Colors.white
        ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: ()=>{
        setState((){
          currentLevel +=1;
        })
      },
      backgroundColor: Colors.deepPurpleAccent,
      child: const Icon(
        Icons.add
        ),
      ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 40.0,
            ),
          ),
          const SizedBox(height: 30.0),

         const Divider(
            height: 60.0,
          ),
          const Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
         const SizedBox(height: 10.0),
          const Text(
            'Segun Aderinola',
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 24.0,
            ),
          ),
         const SizedBox(height: 30.0),
         const Text(
            'CURRENT NINJA LEVEL',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            '$currentLevel',
            style: const TextStyle(
              color: Colors.amberAccent,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 30.0),
         const  Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey,
                ),
            SizedBox(width: 10.0),

              Text(
                'segun.aderinola@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0
                ),

              )
            ],
          )

          
        ],
        ))
    );
  }}