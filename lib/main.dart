import 'package:finacial_application/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
              
      ),
      home: const HomePage(),
    );
  }
}

// class VideoApp extends StatefulWidget {
//   const VideoApp({super.key});

//   @override
//   _VideoAppState createState() => _VideoAppState();
// }

// class _VideoAppState extends State<VideoApp> {
  
// late _VideoPlayerController _controller;

//   @override
//   void initState()
//   {
//     super.initState();
//   }
// }