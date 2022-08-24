
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Dashboardview extends StatefulWidget {
  const Dashboardview({Key? key}) : super(key: key);

  @override
  State<Dashboardview> createState() => _DashboardviewState();
}

class _DashboardviewState extends State<Dashboardview> {

   // ignore: unused_field
   final List<String> _listItem =[
    "images/Italian.png",
    "images/Quick & easy.png",
    "images/Asian.png",
    "images/BreakFast.png",
    "images/exotic.png",
    "images/garman.png",
    "images/hamburger.png",
    "images/Light & Lovely.png",
    "images/summer.png",
    "images/BBQ.png",


    

   ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.menu),
          title: const Center(child: Text("Home")),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("0")),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                 width: double.infinity,
                 height: 250,
                 decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage( 
                  image: AssetImage("images/Italian.png"),
                  fit: BoxFit.cover, 
                  ),
                 ),
                 child: Container(
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.2),
                      ],
    
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text("Italian Food",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("Watch Now",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      
                    ],
                  ),
                 ),
                ),
                const SizedBox(height: 20,),
              Expanded(
                child: GridView.count(
                        crossAxisCount: 2,
                       padding: const EdgeInsets.all(5),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children:_listItem.map((item) =>  Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.cover,

                              ), 
                            ),
                            child: Transform.translate(
                              offset: const Offset(50, -40),
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal :55, vertical: 55),
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,

                                ),
                                child: const Icon(Icons.bookmark_border),
                              ),
                            ),
    
                          ),
    
                        )).toList(),
                ),
                ),
              ],
            ),
        ),
        ),
      ),
    );
  }
}
