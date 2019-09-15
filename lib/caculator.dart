import 'package:flutter/material.dart';


class CaculatorTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CaculatorPage()
    );
  }
}

class CaculatorPage extends StatefulWidget{ // creating a stateful widget
  @override
  State createState() => new CaculatorState(); // creating the state
}

class CaculatorState extends State<CaculatorPage>{ 
  @override
  Widget build(BuildContext context) { // creating the widget
    return new Scaffold(
      appBar: new AppBar( //defines the content of the Appbar
        title: new Text("Calculator"),
      ),
      body: new Container( //defines the content of the body
        child: new Text("Hello")
      )
    );
  }
}