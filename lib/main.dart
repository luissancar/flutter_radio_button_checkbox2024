
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _groupValue = 1;
  int _groupValue2 = 2;
  bool value = true;
  String stringCheck = "true";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildItem("uno", 1),
            _buildItem("dos", 2),
            _buildItem("tres", 3),
            _buildItem2("a", 1),
            _buildItem2("b", 2),
            _buildItem2("c", 3),
            Text(_groupValue.toString()),
            Text(_groupValue2.toString()),
            Text(value.toString()),
            Row(
              children: [
                Text("Check "),
                Checkbox(
                  value: value,
                  activeColor: Colors.pink,
                  onChanged: (bool? valuep) {
                    setState(() {
                      value = valuep!;
                    });
                  },
                ),
              ],
            ),
          ],
        ));
  }

  Widget _buildItem(String text, int value) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue = value!;
          });
        },
        activeColor: Colors.pink,
      ),
      // other arguments
    );
  }

  Widget _buildItem2(String text, int value) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue2,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue2 = value!;
          });
        },
        activeColor: Colors.pink,
      ),
      // other arguments
    );
  }
}