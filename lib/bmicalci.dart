import 'package:flutter/material.dart';
import 'dart:math';

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  // TextEditingController weightController = TextEditingController();
  // TextEditingController heightController = TextEditingController();
  double _weightSliderValue = 0;
  double _heightSliderValue = 0;
  double bmiValue = 0;
  String bmiStatus = "Your Health Status";
  String gender;
  void bmiCalci() {
    if (this._heightSliderValue != 0 &&
        this._weightSliderValue != 0 &&
        this.gender.isNotEmpty) {
      double height = this._heightSliderValue;
      double weight = this._weightSliderValue;
      setState(() {
        this.bmiValue = weight / pow(height / 100, 2);
        this.bmiValue = this.bmiValue.roundToDouble();
      });
      if (this.bmiValue < 18.50) {
        bmiStatus = "UnderWeight";
      } else if (this.bmiValue >= 18.50 && this.bmiValue <= 24.99) {
        bmiStatus = "HealthyWeight";
      } else if (this.bmiValue >= 25.0 && this.bmiValue <= 29.99) {
        bmiStatus = "OverWeight";
      } else {
        bmiStatus = "Obese";
      }
      this.showDetails();
    }
  }

  showDetails() {
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) => AlertDialog(
        contentTextStyle: TextStyle(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: Colors.white,
        title: Text(
          "BMI Result",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Gender: $gender",
                // textAlign: TextAlign.center,
              ),
              Text(
                "BMI Range ${this.bmiValue.toString()}",
                style: TextStyle(color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$bmiStatus",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: closeDialog)
        ],
      ),
    );
  }

  closeDialog() {
    this.reset();
    Navigator.of(context).pop();
  }

  reset() {
    setState(() {
      this._heightSliderValue = 0;
      this._weightSliderValue = 0;
      this.bmiValue = 0;
      this.gender = '';
      this.bmiStatus = "Your Health Status";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        // iconTheme: IconThemeData(color: Colors.orange),
        title: Center(
          child: Text(("BMI Calculator").toUpperCase()),
        ),
      ),
      body: Container(
          // color: Colors.black,
          child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            shadowColor: Colors.grey,
            elevation: 6.0,
            child: Container(
              margin: EdgeInsets.all(20.0),
              // height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        visualDensity:
                            VisualDensity(horizontal: 4.0, vertical: 2.0),
                        color: Colors.lightBlue,
                        elevation: 20.0,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          this.gender = "Female";
                        },
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      visualDensity:
                          VisualDensity(horizontal: 4.0, vertical: 2.0),
                      color: Colors.redAccent,
                      elevation: 20.0,
                      child: Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        this.gender = "Male";
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            elevation: 6.0,
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  // color: Colors.blue,
                  child: Text(
                    "Weight(in kg): $_weightSliderValue",
                    style: TextStyle(color: Colors.grey[600], fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Slider(
                    value: _weightSliderValue,
                    min: 0.0,
                    max: 100.0,
                    divisions: 20,
                    label: _weightSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _weightSliderValue = value;
                        print(_weightSliderValue);
                      });
                    },
                  ),
                ),
                // Center(
                //   child: Card(
                //     child: InkWell(
                //       splashColor: Colors.blue.withAlpha(30),
                //       onTap: () {
                //         print('Card tapped.');
                //       },
                //       child: Container(
                //         width: 300,
                //         height: 100,
                //         child: Text('A card that can be tapped'),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            elevation: 6.0,
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  // color: Colors.blue,
                  child: Text(
                    "Height(in cm): $_heightSliderValue",
                    style: TextStyle(color: Colors.grey[600], fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Slider(
                    activeColor: Colors.orange,
                    value: _heightSliderValue,
                    min: 0.0,
                    max: 100.0,
                    divisions: 20,
                    label: _heightSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _heightSliderValue = value;
                        print(_heightSliderValue);
                      });
                    },
                  ),
                ),
                // Center(
                //   child: Card(
                //     child: InkWell(
                //       splashColor: Colors.blue.withAlpha(30),
                //       onTap: () {
                //         print('Card tapped.');
                //       },
                //       child: Container(
                //         width: 300,
                //         height: 100,
                //         child: Text('A card that can be tapped'),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          MaterialButton(
            elevation: 6.0,
            onPressed: bmiCalci,
            color: Colors.blue,
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ],
      )),
    );
  }
}
