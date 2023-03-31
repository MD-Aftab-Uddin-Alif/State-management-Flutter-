import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider_state.dart';
import 'package:state_management/screen/count_example.dart';
import 'package:state_management/statefull_widget.dart';
import 'package:state_management/stateless_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("State management functionality",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Text("State management",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text("Stateless widget",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Stateless_Home(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Statefull widget",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Statefull_Home(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Provider",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Provider_state(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Count example",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Count_example(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
