import 'dart:async';

import 'package:flutter/material.dart';

class Provider_state extends StatefulWidget {
  const Provider_state({Key? key}) : super(key: key);

  @override
  _Provider_stateState createState() => _Provider_stateState();
}

class _Provider_stateState extends State<Provider_state> {
  int count=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      //print(count);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print("Build"+count.toString());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Provider_state")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 380,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.yellow,
              ),
              child: Text("Provider\n1. Generally we used to setstate but it's not essential ways because it's rebuild the full application/widget and then the performance of a application is very slow.\n2. For remove this problem we used to provider like cart for a ecommerce site.\n3. It's a state management technique\n4. It's used for different ways like business logic, ui separate, update widget, change state.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.green,
            ),
            child: Center(
              child: Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),
                style:  TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(count.toString(),
                style:  TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
