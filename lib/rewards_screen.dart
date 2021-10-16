import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class RewardScreen extends StatelessWidget {
  //const RewardScreen({Key key}) : super(key: key);

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
                  "My Rewards",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purpleAccent,
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
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purpleAccent, width:2),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Just in.. Secondary care giver policy to "
                            "support your loved ones. Details are"
                            " @the policy page",
                        style: TextStyle(
                          color: Colors.purpleAccent,
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

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SwitcherButton(
                      offColor: Colors.blueGrey,
                      onColor: Colors.purpleAccent,
                      value: true,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
