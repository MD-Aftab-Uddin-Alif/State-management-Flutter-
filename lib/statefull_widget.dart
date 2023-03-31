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
          Container(
            height: 380,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Text("A stateful widget is a widget that describes part of the user interface by building a constellation of other widgets that describe the user interface more concretely. The building process continues recursively until the description of the user interface is fully concrete. Stateful widgets are useful when the part of the user interface you are describing can change dynamically, e.g. due to having an internal clock-driven state, or depending on some system state.\nUsed to setState",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
              height: 30,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              ),
              child: Center(child: Text(DateTime.now().toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ))),
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
