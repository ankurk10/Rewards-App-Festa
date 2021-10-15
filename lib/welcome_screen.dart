import 'package:flutter/material.dart';
import 'package:rewards_app/bottom_nav.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({ Key? key }) : super(key: key);

  @override
  _welcome_screenState createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  var myFeedbackText = "COULD BE BETTER";
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
              const Center(
                child: Text(
                  "Hello Ankur",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Slider(
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  value: sliderVal,
                  activeColor: const Color(0xffff520d),
                  inactiveColor: Colors.blueGrey,
                  onChanged: (newValue) {
                    setState(() {
                      sliderVal = newValue;
                      if (sliderVal >= 0.0 && sliderVal <= 1.0) {
                        myFeedbackColor = Colors.red;
                        myFeedbackText = "COULD BE BETTER";
                      }
                      if (sliderVal >= 1.1 && sliderVal <= 2.0) {
                        myFeedbackColor = Colors.yellow;
                        myFeedbackText = "BELOW AVERAGE";
                      }
                      if (sliderVal >= 2.1 && sliderVal <= 3.0) {
                        myFeedbackColor = Colors.amber;
                        myFeedbackText = "NORMAL";
                      }
                      if (sliderVal >= 3.1 && sliderVal <= 4.0) {
                        myFeedbackColor = Colors.green;
                        myFeedbackText = "GOOD";
                      }
                      if (sliderVal >= 4.1 && sliderVal <= 5.0) {
                        myFeedbackColor = const Color(0xffff520d);
                        myFeedbackText = "EXCELLENT";
                      }
                    });
                  },
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height/8,
              ),

              ButtonTheme(
                height: 40,
                minWidth: 300,
                child: ElevatedButton(
                  child: const Text("AGREE AND CONTINUE",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF128C7E),
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