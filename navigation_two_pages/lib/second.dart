
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget
{
  @override
  _SecondPageState createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage>
{
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Column(
        children: [
          TextField(
            controller: textEditingController,
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
              child: Icon(Icons.arrow_back),
          onPressed: sendDataBack(context)
          ),
        ],
      )
    );
  }

  sendDataBack(BuildContext context)
  {
    String textToBack = textEditingController.text;
    Navigator.pop(context, textToBack);
  }
}


