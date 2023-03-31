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
            child: Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),
              style:  TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Center(
            child: Text(count.toString(),
              style:  TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
