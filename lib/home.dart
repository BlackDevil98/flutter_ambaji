import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.memory, color:Colors.black),
      ),
      body: SingleChildScrollView(
                  child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Welcome,",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700)),
                          Text("Ambaji Mandir",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500)),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 180,
                  child: StoryMode(),
                ),

                //F3AA63

                Padding(
                  padding: EdgeInsets.only(right:20,left: 20),
                  child: Card(
                    color: Color(0xffF3AA63),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('About & History of Ambaji Temple'),
                          subtitle: Text(
                              'Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know more', style: TextStyle(color:Colors.black),),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right:20,left: 20),
                  child: Card(
                    color: Color(0xff6A58F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('Live Aarti & Darshan'),
                          subtitle: Text(
                              'Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know more', style: TextStyle(color:Colors.black),),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

Padding(
                  padding: EdgeInsets.only(right:20, left: 20),
                  child: Card(
                    color: Color(0xffED6B65),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('Bhakti Player'),
                          subtitle: Text(
                              'Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know more', style: TextStyle(color:Colors.black),),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

Padding(
                  padding: EdgeInsets.only(right:20,left: 20),
                  child: Card(
                    color: Color(0xff5572F6),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('Contact Us'),
                          subtitle: Text(
                              'Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('Know more', style: TextStyle(color:Colors.black),),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),



                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[])
                                  ],
                                ),
                              )));
                    })
              ],
            ),
          ),
        ),
    );
  }
}

class StoryMode extends StatefulWidget {
  @override
  _ListCount createState() => _ListCount();
}

class Piths {
  String image;
  String name;
  String location;
  String description;

  Piths(String image, String name, String location, String description) {
    this.image = image;
    this.name = name;
    this.location = location;
    this.description = description;
  }
}

class _ListCount extends State<StoryMode> {
  List<Piths> piths = new List();

  _ListCount() {
    piths.add(Piths("assest/logo.png", "Ambaji Temple", "Ambaji",
        "The shrine of Shri Amba is regarded as a revered shrine by the Shakta Shaktism sect of Hinduism. It is believed that the Heart of Sati Devi has fallen here. The origin of the Shakti Peetha status temple is from the mythology of Daksha yaga and Sati's self immolation. Shakti Peethas were believed to have been formed when the body parts of the corpse of Sati Devi fell into different regions when Lord Shiva carried her corpse in sorrow after her death. The shrines are considered as highly revered by Shaivist (Shaivism) sect in Hinduism. The Shakti Peethas are mostly worshiped by tantra practitioners."));
    piths.add(Piths(
        "assest/mainpic.png", "Hello World 2", "Location", "description2"));
    piths.add(Piths(
        "assest/mainpic.png", "Hello World 3", "Location", "description3"));
    piths.add(Piths(
        "assest/mainpic.png", "Hello World 4", "Location", "description4"));
    piths.add(Piths(
        "assest/mainpic.png", "Hello World 5", "Location", "description5"));
    piths.add(Piths(
        "assest/mainpic.png", "Hello World 6", "Location", "description6"));
    piths.add(Piths(
        "assest/mainpic.pngg", "Hello World 7", "Location", "description7"));
  }

  Widget mypiths(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              "assest/mainpic.png",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${piths[index].name}',
            style:
                TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '${piths[index].location}',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                fontSize: 13),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: piths.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (contex, index) => mypiths(context, index),
    );
  }
}
