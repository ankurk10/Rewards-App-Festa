import 'package:flutter/material.dart';


class PayScreen extends StatelessWidget {
  //const PayScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              const Center(
                heightFactor: 5,
                child: Text(
                  "My Cash",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE57373),
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  //elevation: 2,
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE57373), width:2),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Base Pay                  1,200,000\n\nAllowances              1,200,000\n\nBonus                       1,200,000\n\nLTIP                          1,200,000' ,
                        maxLines: 20,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE57373)
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 20,
                width: 20,
              ),

            ],
          ),
        ),
      ),

    );
  }
}
