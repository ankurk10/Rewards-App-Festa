import 'package:flutter/material.dart';

class BenefitsScreen extends StatelessWidget {
  //const BenefitsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              const Center(
                heightFactor: 4,
                child: Text(
                  "My Cash",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.teal,
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
                  elevation: 2,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Health Insurance : 5,00,000 \n\nAccident Cover : 15,00,000 \n\nLife Cover : 10,00,000 \n\n EPF : 21,000 \n\n EDLI : 21,000 \n\n Gratuity : 21,000 \n\n Internet : 21,000 \n\n Leave Encashment : 21,000' ,
                        maxLines: 20,
                        style: TextStyle(
                          fontSize: 20,
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
