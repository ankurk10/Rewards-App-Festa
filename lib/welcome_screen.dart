import 'package:flutter/material.dart';
import 'package:rewards_app/bottom_nav.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({ Key? key }) : super(key: key);

  @override
  _welcome_screenState createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  var myFeedbackText = "Average";
  var sliderValue = 0.0;
  Color myFeedbackColor = Colors.red;
  var sliderVal = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                width: 20,
              ),
              const Center(
                child: Text(
                  "Good Morning, Ankur",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(
                height: 200,
                width: 50,
              ),

              Text(
                "How are you doing today",

                    style:TextStyle(
                        color: Colors.redAccent,
                        fontSize: 29,
                        fontWeight: FontWeight.w600,


              ),
              ),

              SizedBox(
                height: 50,
                width: 50,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Slider(
                  min: 0.0,
                  max: 5.0,
                  divisions: 10,
                  value: sliderVal,
                  activeColor: const Color(0xFFF44336),
                  inactiveColor: Colors.blueGrey,
                  onChanged: (newValue) {
                    setState(() {
                      sliderVal = newValue;
                      if (sliderVal >= 0.0 && sliderVal <= 1.0) {
                        myFeedbackText = "Bad";
                      }
                      if (sliderVal >= 1.1 && sliderVal <= 2.0) {
                        myFeedbackText = "Average";
                      }
                      if (sliderVal >= 2.1 && sliderVal <= 3.0) {
                        myFeedbackText = "Normal";
                      }
                      if (sliderVal >= 3.1 && sliderVal <= 4.0) {
                        myFeedbackText = "Good";
                      }
                      if (sliderVal >= 4.1 && sliderVal <= 5.0) {
                        myFeedbackText = "Excellent";
                      }
                    });
                  },
                ),
              ),

              SizedBox(
                height: 180,
                width: 50,
              ),


              ButtonTheme(
                height: 40,
                minWidth: 300,
                child: ElevatedButton(
                  child: const Text("CONTINUE",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    elevation: 20,
                  ),
                  onPressed: ()
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return MyApp();
                        }
                    ));
                  },
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}