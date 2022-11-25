import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControl();
  }
}

class _TextControl extends State<TextControl> {
  String _mainText = 'This is the first assignment!';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        child: Text('Change Text!'),
        onPressed: () {
          setState(() {
            _mainText = 'This changed!';
          });
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
      ),
      TextOutput(_mainText)
    ]);
  }
}
