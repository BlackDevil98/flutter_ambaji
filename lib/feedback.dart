import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:FormScreen(),
    );
  }

}

class FormScreen extends StatefulWidget{
  @override
  _FormScreen createState() => _FormScreen();

}

class _FormScreen extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your Email'
            ),
          ),
              TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your Description'
            ),
          ),
          RaisedButton(
              color: Colors.greenAccent,
              onPressed: () => print("Sucessful"),
              child: new Text("Submit"),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
