import 'package:flutter/material.dart';

class Statefull_Home extends StatefulWidget {
  const Statefull_Home({Key? key}) : super(key: key);

  @override
  _Statefull_HomeState createState() => _Statefull_HomeState();
}

class _Statefull_HomeState extends State<Statefull_Home> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Statefull widget")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
              child: Text(count.toString(),
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
          count++;
          print(count++);
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
