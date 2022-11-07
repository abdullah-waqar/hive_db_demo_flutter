import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_db_demo/home_page.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
// initalize hive
  await Hive.initFlutter();

// Open the box(it is like representation to the database)

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
