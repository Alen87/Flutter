// Solve the tasks outlined in the video (starting code is attached).

// 1. Create a new Flutter App (flutter create flutter_assignment, then replace your main.dart with the attached one)
// and output an AppBar and some text below it (i.e. in the body of the page)

// 2.Add a button (e.g. RaisedButton) which changes the text (to any other text of your choice)

//3. Split the app into three custom widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './text_control.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: TextControl(),
      ),
    );
  }
}
