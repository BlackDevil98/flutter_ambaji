import 'package:flutter/material.dart';

class BottomSheetClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget>[
            Column(children:<Widget>[
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    mainAxisSize: MainAxisSize.max,
                    children:<Widget>[

                IconButton(icon: Icon(Icons.verified_user, color:Colors.black),onPressed: () {
                  Navigator.pushNamed(context, '/message');
                },),
                Text("Hon. Chief Minister’s",style:TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.center,)
                    ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.directions_walk, color:Colors.black),onPressed: (){},),
                Text("Transportation",style:TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.feedback, color:Colors.black),onPressed: (){
                  Navigator.pushNamed(context, '/feed');
                },),
                Text("Feedback",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),
              
            ]),

            Column(children:<Widget>[
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.find_replace, color:Colors.black),onPressed: (){},),
                Text("Gabbar Jyot",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.fastfood, color:Colors.black),onPressed: (){},),
                Text("Food (Bhojn Prasad)",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),
              
            ]),

            Column(children:<Widget>[
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.home, color:Colors.black),onPressed: (){},),
                Text("Accommodation",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.favorite, color:Colors.black),onPressed: (){},),
                Text("Fairs & Festivals",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),
              
            ]),
          
            Column(children:<Widget>[
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.font_download, color:Colors.black),onPressed: (){
                  Navigator.pushNamed(context, '/fac');
                },),
                Text("Facilities",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 80,
                  child:Column(
                    children:<Widget>[

                IconButton(icon: Icon(Icons.text_fields, color:Colors.black),onPressed: (){
                  Navigator.pushNamed(context, '/mantra');
                },),
                Text("Mantra",style:TextStyle(color: Colors.black,fontSize: 10),textAlign: TextAlign.center)
                    ]
                  ),
                ),
              ),

              
            ]),
          
          
          ],
        ),
    );
  }

}