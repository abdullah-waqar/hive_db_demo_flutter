import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// reference to our box

  final _mybox = Hive.box('mybox');

// Write data

  void writeData() {
    _mybox.put(1, "Abdullah");
  }

// Read data

  void readData() {
    print(_mybox.get(1));
  }

// Delete data

  void deleteData() {
    _mybox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: writeData,
              child: Text("Write"),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: readData,
              child: Text("Read"),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text("Delete"),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
