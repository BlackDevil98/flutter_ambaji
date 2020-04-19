import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color:Colors.black),
        title: Text("Chief Minister's Message",style: TextStyle(color:Colors.black),),
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
              child: SafeArea(
          child: Container(
            width: 500,
            child: Column(

              children: <Widget>[
                
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget>[
                      SizedBox(
                        height:10,
                      ),
                      Image.asset("assest/pm.jpeg",height: 200,width: 200,),
                      SizedBox(
                        height:10,
                      ),
                      Text("shree Vijay Rupani",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("Chief Minister's, Gujarat State",style: TextStyle(fontSize: 18),),

                      SizedBox(
                        height:10,
                      ),
                      Text("Message",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(
                        height:10,
                      ),
                      Text("\"Science is not only compatible with spirituality",style: TextStyle(fontSize: 15),),
                      Text("it is a profound source of spirituality.\"",style: TextStyle(fontSize: 15),),
                      Text("- Carl Sagan",style: TextStyle(fontSize: 15),),
                    ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("The Chief Minister of Gujarat is the chief executive of the Indian state of Gujarat. As per the Constitution of India, the governor is a state's de jure head, but de facto executive authority rests with the chief minister. Following elections to the Gujarat Legislative Assembly, the state's governor usually invites the party (or coalition) with a majority of seats to form the government. The governor appoints the chief minister, whose council of ministers are collectively responsible to the assembly. Given that he has the confidence of the assembly, the chief minister's term is for five years and is subject to no term limits.",
                  style: TextStyle(fontSize:15),),
                ),
              ],
            ),
          ),),
      ),
    );
  }

}