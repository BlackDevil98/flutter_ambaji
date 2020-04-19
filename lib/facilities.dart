import 'package:flutter/material.dart';

class FacilitiesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Facilities",style: TextStyle(color:Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 1000,
             child: CardView()),
    ),
  ),
    );
  }

}
 
class CardView extends StatefulWidget{
  @override
  _CardView createState() => _CardView();
}

class CardMag {
  String title;
  String subtitle;

  CardMag(String title, String subtitle) {
    this.title = title;
    this.subtitle = subtitle;
  }
}

class _CardView extends State<CardView>{

  List<CardMag> items = new List();

  _CardView(){
    items.add(CardMag("Heya","Sometimes the primary action area of a card is the card itself. Cards can be one large touch target that shows a detail screen when tapped."));
    items.add(CardMag("Hello2","hello world2"));
    items.add(CardMag("Hello2","hello world2"));
    items.add(CardMag("Hello2","hello world2"));
    items.add(CardMag("Hello2","hello world2"));
  }

  Widget myCard (BuildContext context, int index){
    return Card(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album,color: Colors.black,),
            title: Text("${items[index].title}"),
            subtitle: Text("${items[index].subtitle}"),
          ),
          ButtonBar(
            children:<Widget>[
              FlatButton(
                  child: const Text('Read More'),
                  onPressed: () { /* ... */ },
                ),
               
            ]
          )
          
          
        ],
      ),
    );
  }

  //${items[index].title}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (contex, index) => myCard(context, index),
    );
  }
}

