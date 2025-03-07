import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Profile Card',
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:const Text("Profile Card")
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 50,
            backgroundImage: AssetImage('images/Photoprofile.jpg'),),
            const SizedBox(height: 10,),
            const Text(
              "Muhammad Dzaky Ar Rasyid \n Student",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left: 30,right: 30,),
              child: Text(
                'A student and will always be',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),),),
            
            const SizedBox(height: 10,),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {

                final Uri url = Uri.parse('https://www.instagram.com/ichzfer/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }

                  },
                  child: const Image(
                    image: AssetImage('images/th (1).jpg'),
                    height: 100),
                  ),

                ElevatedButton(
                  onPressed: () async {

                    final Uri url = Uri.parse('https://github.com/Dzaky-Ar');
                        if (await canLaunchUrl(url)) {
                         await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                  }

                  },
                  child: const Image(
                    image: AssetImage('images/th.jpg'),
                    height: 100)
                  ),

                
              ],
            )

            
            
          ],
          
        ),
      ),
    );
  
}}