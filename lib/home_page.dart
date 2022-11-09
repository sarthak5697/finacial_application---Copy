import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBAr(),
      body: SingleChildScrollView(
        child:Stack(
        // alignment: Alignment.center,
          // mainAxisAlignment:MainAxisAlignment.spaceBetween,
         children: [
                Container(
                    height: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/luck.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                Container(
                    
                    // const Text(
                    //   'Class',
                    //   style: TextStyle(
                    //     color:Colors.white
                    //   ),
                    // ),
                    height: 600,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 36, 36, 36),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                  ),


                Container(
                    height: 600,
                    color: const Color.fromARGB(255, 36, 36, 36),
                  ),

                Container(
                    height: 400,
                    color: const Color.fromARGB(255, 36, 36, 36),
                  ),
              ],
            
          ), 
        ),   
    );
  }

//_________________________________
//Widgets
//_________________________________

  AppBar _buildAppBAr() {
    return AppBar(
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
      ),
    );
  }
}
