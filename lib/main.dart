// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:hello_world/Pages/choose_location.dart';
// import 'package:hello_world/loading.dart';
// import './quote.dart';
// import 'package:hello_world/Pages/home.dart';


void main(){
  runApp(MaterialApp(
    home: Home(),
    // routes: {
    //   '/': (context) => Loading(),
    //   '/home':(context) => Home(),
    // },
    ),
  );  
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
        body: Center(
          child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black, 
                        blurRadius: 10,
                        spreadRadius: 5, 
                        offset: Offset(0, 2)
                      ), 
                    ],
                  ),
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                  width: 400,
                  height: 300,
                  child: Center(
                    child: Text(
                      '${counter}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      )
                    ),
                  ),
                ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    left: 30,
                    bottom: 10,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey[900],
                      // heroTag: 'back',
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.restart_alt,
                        size: 40,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 100,
                    right: 100,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey[900],
                      // heroTag: 'next',
                      onPressed: (){
                        setState(() {
                          counter += 1;
                          if (counter >= 1000) {
                            counter = 0;
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 30,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey[900],
                      // heroTag: 'next',
                      onPressed: () {
                        setState(() {
                          counter -= 1;
                          if (counter < 0) {
                            counter = 0;
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.minimize,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
      
      );
  } 
}