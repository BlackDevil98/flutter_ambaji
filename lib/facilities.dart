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
    items.add(CardMag("Ropeway","Shri Arasuri Ambaji Mata Devasthan Trust has recently in 1998 installed and inaugurated Shri Amba Devi Udan Khatola Facilities , that is to say, a Rope Way on the mountain of Gabbar, with the help of Usha Breco Co. of Calcutta on a lease basis, so that more and more pilgrims can visit and enjoy the beauty and holiness of Gabbar with so ease and joy, just by reaching in time, without any trouble. Rope way on Gabbar Hill has in fact encouraged more and more tourists and pilgrims, especially the aged and infirmed and senior citizens people from all corners of the world to come and sit in Rope Way in order to swing in the arms of the Beauty of Holy Gabbar Hill and its rocky surroundings."));
    items.add(CardMag("Shree Ambica Vishram Gruh","Shri Jagat Janani Pathikashram opposite to the sites of Ambica Vishram Gruh and State Transport Bus Station Depot. It has also 48 Double and Single Rooms, attached with all other amenities, like conference room, dining hall, garden, play ground, parking etc. There are 10 ten dormitories facilities for single male and female tourists. The trust charges very nominal rents, for all the accommodation provided to the devotee. As the location of this Holiday Inn is situated on the top of the city Ambaji, one cannot miss to look at the beautiful scenery of the whole spread over city of Ambaji."));
    items.add(CardMag("Parking Plot","A parking lot (American English) or car park (British English), also known as a car lot, is a cleared area that is intended for parking vehicles. Usually, the term refers to a dedicated area that has been provided with a durable or semi-durable surface. In most countries where cars are the dominant mode of transportation, parking lots are a feature of every city and suburban area. Shopping malls, sports stadiums, megachurches and similar venues often feature parking lots of immense area. See also multistorey car park."));
    items.add(CardMag("Locker Rooms","A locker is a small, usually narrow storage compartment. They are commonly found in dedicated cabinets, very often in large numbers, in various public places such as locker rooms, workplaces, middle and high schools, transport hubs and the like. They vary in size, purpose, construction, and security."));
    items.add(CardMag("Fire Station","A fire station (also called a fire house, fire hall, firemen's hall, or engine house) is a structure or other area for storing firefighting apparatus such as fire engines and related vehicles, personal protective equipment, fire hoses and other specialized equipment. Fire stations frequently contain working and living space for the firefighters and support staff."));
    items.add(CardMag("Prasad","A packet of prasad is made available by shree arasuri ambaji mata devasthan trust in temple premises in the form of mohan thal starting fro 10 Rs. a box. The prasad store is located below the temple trust building."));
    items.add(CardMag("3D Theater & Gallery",'''
    In the premises of ambaji temple, Shree Arasuri Ambaji Mata Devasthan Trust has established 3D Movie Theater.
    - Amabjiis the first religious 3D movie in the world
    - Central AC 3D Theater
    - Theatrical side maximized 70 seats
    - 45 minute 3D movie
    - In the movie, Daksha Raja's meeting, going to the worship of satin, Shivanjin's Tandava Natarity, the birth of 51 Shakti Peeths including Ambaji Mumari etc.
    '''));
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

