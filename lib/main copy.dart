import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

// With Flutter, you create user interfaces by combining "widgets"
// You'll learn all about them (and much more) throughout this course!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build(BuildContext context){
    const String appTitle = "Flutter layout demo";
    const String description = "You can’t use wget to save this binary file. You can download the image from Unsplash under the Unsplash License. The small size comes in at 94.4 kB.";
    
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors.
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
      // ···
      brightness: Brightness.light,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold
      ),
      // titleLarge: GoogleFonts.oswald(
      //   fontSize: 30,
      //   fontStyle: FontStyle.italic,
      // ),
      // bodyMedium: GoogleFonts.merriweather(),
      // displaySmall: GoogleFonts.pacifico(),
      )
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(image: "assets/images/banner.png"),
                TitleSection(name: "Aderinola Segun", location: "Nigeria"),
                ButtonSection(),
                TextSection(description: description,)
              ],
            )),
        )
      )
    );
 } 
}

class TitleSection extends StatelessWidget{
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                  Text(
                    location,
                    style: TextStyle(color: Colors.grey[500]
                    ),
                  ),
              ],
            ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget{
  const ButtonSection({ super.key });


  @override

  Widget build(BuildContext context){
    final Color color = Theme.of(context).primaryColor;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color,icon: Icons.call, label: "CALL"),
          ButtonWithText(color: color,icon: Icons.near_me, label: "ROUTE"),
          ButtonWithText(color: color,icon: Icons.share, label: "SHARE"),
        ],
      ),
    );
  }
}


class ButtonWithText extends StatelessWidget{
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label
   });


   final Color color;
   final IconData icon;
   final String label;

@override
Widget build(BuildContext context){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),
        ),)
    ],
  );
}
}

class TextSection extends StatelessWidget{
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      )
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}