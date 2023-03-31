import 'package:flutter/material.dart';

class Stateless_Home extends StatelessWidget {
  Stateless_Home({Key? key}) : super(key: key);

  int x=34;
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Stateless widget",
          style: TextStyle(
            fontSize: 25,
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 240,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Text("Stateless widget overrides the build() method and returns a widget. For example, we use Text or the Icon is our flutter application where the state of the widget does not change in the runtime. It is used when the UI depends on the information within the object itself.\nNot used to setState",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Text(x.toString(),
            style:  TextStyle(
              fontSize: 50,
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
