import 'dart:async';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

import 'Splash.dart';
import 'main.dart';
void main(){
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home:    SplashScreen())
  );

}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 3200),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          DelayedDisplay(
            fadingDuration: Duration(milliseconds: 800),
            fadeIn: true,
            child: Center(
              child: Image.asset('images/logo.jpg'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DelayedDisplay(
                fadingDuration: Duration(milliseconds: 1200),
                fadeIn: true,
                child: Center(
                  child: Text(".",style: TextStyle(
                      fontSize: 48,
                      color: Colors.red
                  ),),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DelayedDisplay(
                fadingDuration: Duration(milliseconds: 1800),
                fadeIn: true,
                child: Center(
                  child: Text(".",style: TextStyle(
                      fontSize: 48,
                      color: Colors.red
                  ),),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DelayedDisplay(
                fadingDuration: Duration(milliseconds: 2200),
                fadeIn: true,
                child: Center(
                  child: Text(".",style: TextStyle(
                      fontSize: 48,
                      color: Colors.red

                  ),),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DelayedDisplay(
                fadingDuration: Duration(milliseconds: 2800),
                fadeIn: true,
                child: Center(
                  child: Text(".",style: TextStyle(
                      fontSize: 48,
                      color: Colors.red
                  ),),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DelayedDisplay(
                fadingDuration: Duration(milliseconds: 3200),
                fadeIn: true,
                child: Center(
                  child: Text(".",style: TextStyle(
                      fontSize: 48,
                      color: Colors.red

                  ),),
                ),
              ),
              SizedBox(
                width: 10,
              ),



            ],
          ),

        ],
      ),
    );
  }
}