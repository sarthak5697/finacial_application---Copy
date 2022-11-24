// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';


class video_Screen extends StatefulWidget {
  const video_Screen({super.key});

  @override
  State<video_Screen> createState() => _video_ScreenState();
}

class _video_ScreenState extends State<video_Screen> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network('https://pixabay.com/videos/id-125543/');
    _videoPlayerController!.initialize()
    .then((_){
      _chewieController = ChewieController(videoPlayerController: _videoPlayerController!);
    setState(() {
    });
    });
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    _chewieController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(55, 0, 0, 0),
          flexibleSpace: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: const Color.fromARGB(255, 60, 185, 18),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text(
                      '  Hello , Piyush  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.waving_hand,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 0,
                        bottom: 5,
                        right: 10,
                        left: 10,
                      ),
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 5,
                        right: 5,
                      ),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 213, 213, 213),
                      ),
                      child: Row(
                        children: const [
                          // ignore: prefer_const_constructors
                          Icon(
                            Icons.currency_rupee_rounded,
                            size: 20,
                            color: Color.fromARGB(255, 4, 4, 4),
                          ),
                          Text(
                            ' 1000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
      body: _chewieVideoPlayer(),
            );
 
  }
  Widget _chewieVideoPlayer(){
    return _chewieController!=null && _videoPlayerController!= null ? 
    Container(
      child:Chewie(controller:_chewieController!),

    ):const Text('Loading')
    ;
  }
}

// class videoScreen extends StatefulWidget {
//   const videoScreen({super.key});

//   @override
//   State<videoScreen> createState() => _videoScreenState();
// }

// class _videoScreenState extends State<videoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
