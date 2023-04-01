import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/example_provider.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<ExampleProvider>(context, listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Example")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleProvider>(builder: (context, value, child){
            return Slider(
                min: 0,
                max: 1,
                value: value.value, onChanged: (val){
              value.setValue(val);
            });
          }),
          Consumer<ExampleProvider>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(provider.value),
                    ),
                    child: Center(
                      child: Text("Container1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(provider.value),
                    ),
                    child: Center(
                      child: Text("Container1"),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
