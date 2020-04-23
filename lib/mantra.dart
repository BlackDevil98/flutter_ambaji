import 'package:flutter/material.dart';

void main() => runApp(MantraScreen());
class MantraScreen extends StatelessWidget{
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
          "Mantra",
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
              labelText: 'Enter matra name'
            ),
          ),
              TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter mantra Description'
            ),
          ),
          RaisedButton(
              color: Colors.greenAccent,
              onPressed: () => print("Sucessful"),
              child: new Text("Submit"),
            ),

            Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xffF3AA63),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Durga Mantra'),
                        subtitle: Text(
                            '''सर्वमङ्गलमाङ्गल्ये शिवे सर्वार्थसाधिके ।
शरण्ये त्र्यम्बके गौरि नारायणि नमोऽस्तु ते ॥'''),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/*....*/},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xff6A58F0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Devi Stuti'),
                        subtitle: Text(
                            '''या देवी सर्वभुतेषु क्षान्तिरूपेण संस्थिता ।
या देवी सर्वभुतेषु शक्तिरूपेण संस्थिता ।
या देवी सर्वभुतेषु मातृरूपेण संस्थिता ।
या देवी सर्वभुतेषु बुद्धिरूपेण संस्थिता ।
नमस्तस्यै नमस्तस्यै नमस्तस्यै नमो नमः ॥'''),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xffED6B65),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Durga Dhyan Mantra'),
                        subtitle: Text(
                            '''ॐ जटा जूट समायुक्तमर्धेंन्दु कृत लक्षणाम |
लोचनत्रय संयुक्तां पद्मेन्दुसद्यशाननाम ||'''),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xff5572F6),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Durga Shatru Shanti Mantra'),
                        subtitle: Text(
                            '''रिपव: संक्षयम् यान्ति कल्याणम चोपपद्यते |
नन्दते च कुलम पुंसाम माहात्म्यम मम श्रृणुयान्मम ||'''),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
