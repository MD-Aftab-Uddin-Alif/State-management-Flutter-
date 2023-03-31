import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class Count_example extends StatefulWidget {
  const Count_example({Key? key}) : super(key: key);

  @override
  _Count_exampleState createState() => _Count_exampleState();
}

class _Count_exampleState extends State<Count_example> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider=Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 2), (timer){
      countProvider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider=Provider.of<CountProvider>(context, listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Count example")),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child){
          //print("Only this widget build");
          return Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(countProvider.count.toString(),
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
