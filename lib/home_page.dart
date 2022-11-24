// ignore_for_file: no_leading_underscores_for_local_identifiers, sort_child_properties_last

import 'package:finacial_application/video_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //controller for carousel

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Stack(
          // alignment: Alignment.center,
          // ==mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Stack Children start Here
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    height: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/luck.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  top: 40,
                  child: Container(
                    // const Text(
                    //   'Class',
                    //   style: TextStyle(
                    //     color:Colors.white
                    //   ),
                    // ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Stack(
                        children: [
                          // this is the first container of Sub-Stack-1
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            //flex: 1,
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'class',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                          // this is the second container of Sub-Stack-1

                          Positioned(
                            //flex: 1,
                            top: 5,
                            left: 0,
                            right: 0,
                            child: Container(
                              alignment: Alignment.topRight,
                              child: ElevatedButton(
                                child: const Text(
                                  'join now',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 104, 207, 108),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                   builder:(context)=>const video_Screen()
                                  ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10.0),
                                  shadowColor:
                                      const Color.fromARGB(255, 29, 224, 35),
                                  // enabledMouseCursor: MouseCursor(

                                  // ),
                                  side: const BorderSide(
                                    width: 2.0,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                          ),
                          // this is the third container of Sub-Stack-1
                          Positioned(
                            //flex: 1,
                            top: 40,
                            left: 0,
                            right: 0,
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'learn ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  const ImageIcon(
                                      AssetImage("assets/images/diamond.png"),
                                      color: Color.fromARGB(255, 173, 28, 89),
                                      size: 12),
                                  const Text(
                                    ' earn ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  const ImageIcon(
                                      AssetImage("assets/images/diamond.png"),
                                      color: Color.fromARGB(255, 173, 28, 89),
                                      size: 12),
                                  const Text(
                                    ' repeat',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // this is the fourth container of Sub-Stack-1

                          Positioned(
                            //flex: 1,
                            top: 100,
                            left: 0,
                            right: 0,
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // alignment: Alignment.topLeft,
                                const ImageIcon(
                                    AssetImage("assets/images/diamond.png"),
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    size: 12),
                                const Text(
                                  ' win 2000',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  ' coins daily    ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const ImageIcon(
                                    AssetImage("assets/images/diamond.png"),
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    size: 12),
                                const Text(
                                  ' 24,945 ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Investors Joined ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                // const Text(
                                //   'win 2000 coins daily',
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //     fontWeight: FontWeight.bold,
                                //     fontSize: 15,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 34, 34, 34),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  top: 651,
                  child: Container(
                    height: 900,
                    color: const Color.fromARGB(255, 34, 34, 34),
                    child: Stack(
                      // alignment:
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Positioned(
                          top: 40,
                          right: 0,
                          left: 0,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 25,
                            ),
                            child: Text(
                              'meet our wealth managers',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 0,
                              left: 0,
                            ),
                            height: 500,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 34, 34, 34),
                            ),
                            width: double.maxFinite,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              left: 30,
                                              top: 0,
                                            ),
                                            height: 450,
                                            width: 280,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: const Color.fromARGB(
                                                    255, 32, 32, 32)),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              left: 30,
                                            ),
                                            width: 280,
                                            height: 250,
                                            decoration: const BoxDecoration(
                                              // borderRadius: BorderRadius.circular(20),
                                              color: Color.fromARGB(
                                                  255, 255, 246, 246),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                topLeft: Radius.circular(15),
                                              ),

                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/card-person3.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 265,
                                          left: 50,
                                          child: Text(
                                            "Nishant",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 265,
                                          right: 20,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/star.png'),
                                              const Text(
                                                '  5.0',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 310,
                                          left: 50,
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/user.png'),
                                                      const Text(
                                                        '  700 Clients',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/clock.png'),
                                                      const Text(
                                                        '  5 year',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  //  const SizedBox(
                                                  //       height: 30,
                                                  //       width:280 ,
                                                  //       child:const DecoratedBox(
                                                  //         decoration: const BoxDecoration(
                                                  //           color:Colors.black,
                                                  //         ),
                                                  //       ),
                                                  //     )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Positioned(
                                          right: 0,
                                          bottom: 75,
                                          child: SizedBox(
                                            height: 35,
                                            width: 280,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(15),
                                                  bottomRight:
                                                      Radius.circular(15),
                                                ),
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                              child: Text(
                                                '        handling 100k portfolio',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 122, 122, 122),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 50,
                                          bottom: 75,
                                          child: Image.asset(
                                              'assets/images/rupee.png'),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 550,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 79, 147, 225),
                              ),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                              top: 5,
                                              bottom: 5,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  ' Confused where to invest ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Text(
                                                  ' we are happy ',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  ' to help ',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  ' Connect with wealth manager ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 147, 236, 136),
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          clipBehavior: Clip.none,
                                          height: 200,
                                          width: 800,
                                          decoration: BoxDecoration(
                                            // color:Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                bottom: 0,
                                                left: 50,
                                                right: 0,
                                                child: Container(
                                                  height: 200,
                                                  width: 200,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 3, 2, 2),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                bottom: 0,
                                                left: 0,
                                                right: 30,
                                                child: Container(
                                                  height: 200,
                                                  width: 200,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        248, 255, 255, 255),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 800,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // alignment: Alignment.topLeft,
                                const ImageIcon(
                                    AssetImage("assets/images/diamond.png"),
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    size: 12),
                                const Text(
                                  ' Serving 24,595',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  ' investors daily    ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const ImageIcon(
                                    AssetImage("assets/images/diamond.png"),
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    size: 12),
                                const Text(
                                  ' 24,945 ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Investors have Joined ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                // const Text(
                                //   'win 2000 coins daily',
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //     fontWeight: FontWeight.bold,
                                //     fontSize: 15,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  top: 1750,
                  child: Container(
                    height: 500,
                    color: const Color.fromARGB(255, 34, 34, 34),
                    child: Stack(
                      // alignment:
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Positioned(
                          top: 40,
                          right: 0,
                          left: 0,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 25,
                            ),
                            child: Text(
                              'Invest In Stock',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: 100,
                        //   right: 0,
                        //   left: 0,
                        //   child: Container(
                        //     padding: const EdgeInsets.only(
                        //       top: 0,
                        //       left: 0,
                        //     ),
                        //     height: 500,
                        //     decoration: const BoxDecoration(
                        //       // color: Color.fromARGB(255, 170, 29, 29),
                        //     ),
                        //   ),
                        // ),
                        Row(
                          children: [
                            //ROW HALF BOX 1

                            Expanded(
                              flex:1,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 160,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color.fromARGB(255, 77, 77, 79),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          // color:Colors.red,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                ' Start Early ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontSize: 20,
                                                ),
                                              ),
                                              Text(
                                                ' start investing now ',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 4, 4, 4),
                                                ),
                                              ),
                                              
                                             
                                            ],
                                          ),
                                        ),
                                      ),
                            
                                    
                                       ],
                                  ),
                                ),
                              ),
                            ),
                         
                         //ROW HALF BOX 2
                        Expanded(
                          flex:1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                    color: const Color.fromARGB(255, 77, 77, 79),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      // color:Colors.red,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        top: 5,
                                        bottom: 5,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            ' Start Early ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            ' start investing now ',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 4, 4, 4),
                                            ),
                                          ),
                                         
                                         
                                        ],
                                      ),
                                    ),
                                  ),
                        
                                  //Card Container
                                 ],
                              ),
                            ),
                          ),
                        ),

                          ],
                        ),
                        
                        
                        //LONG BOX
                        Positioned(
                          top: 180,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 255, 216, 41),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        // color:Colors.red,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 5,
                                          bottom: 5,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              ' Start Early ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              ' start investing now ',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 4, 4, 4),
                                              ),
                                            ),
                                            Text(
                                              ' without the wait ',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            ),
                                            Text(
                                              ' Start your stock investment ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 255, 35, 79),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  //Card Container
                                  Positioned(
                                    top: 0,

                                    // bottom:0,
                                    right: 0,

                                    child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      height: 160,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 243, 33, 180),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            left: 60,
                                            child: Container(
                                              height: 150,
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 3, 2, 2),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            right: 60,
                                            left: 0,
                                            child: Container(
                                              height: 150,
                                              width: 250,
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    248, 255, 255, 255),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // STATS BAR
                        Positioned(
                          top: 350,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // alignment: Alignment.topLeft,
                                const ImageIcon(
                                    AssetImage("assets/images/diamond.png"),
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    size: 12),
                                const Text(
                                  ' Serving 24,595',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  ' investors daily    ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const ImageIcon(
                                    AssetImage("assets/images/diamond.png"),
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    size: 12),
                                const Text(
                                  ' 24,945 ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 28, 89),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Investors have Joined ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                // const Text(
                                //   'win 2000 coins daily',
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //     fontWeight: FontWeight.bold,
                                //     fontSize: 15,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  top: 1750,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Keep",
                            style: TextStyle(
                              fontSize: 95,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(107, 90, 89, 89),
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "H",
                                style: TextStyle(
                                  fontSize: 95,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(107, 90, 89, 89),
                                ),
                              ),
                              Image.asset(
                                'assets/images/rupee1.png',
                                height: 70,
                              ),
                              const Text(
                                "lding",
                                style: TextStyle(
                                  fontSize: 95,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(107, 90, 89, 89),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    height: 600,
                    color: const Color.fromARGB(255, 35, 35, 35),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//_________________________________
//Widgets
//_________________________________

  AppBar _buildAppBar() {
    return 
    AppBar(
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
