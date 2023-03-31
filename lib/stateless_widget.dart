import 'package:flutter/material.dart';

class Stateless_Home extends StatelessWidget {
  Stateless_Home({Key? key}) : super(key: key);

  int x=34;
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stateless widget")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(x.toString(),
              style:  TextStyle(
                fontSize: 50,
              ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x++);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
