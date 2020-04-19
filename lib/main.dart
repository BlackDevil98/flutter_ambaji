import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginScreen(),
        '/home' : (context) => HomeScreen(),
      },
    );
  }
}

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreen createState() => _LoginScreen();

}

class _LoginScreen extends State<LoginScreen> {

  //bool _isLoggedIn = false;

  //GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  // _login() async{
  //   try{
  //     await _googleSignIn.signIn();
  //     setState(() {
  //       _isLoggedIn = true;
  //     });
  //   } catch (err){
  //     print(err);
  //   }
  // }

  // _logout(){
  //   _googleSignIn.signOut();
  //   setState(() {
  //     _isLoggedIn = false;
  //   });
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assest/mainpic.png",
            ),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Color(0xff0d69ff).withOpacity(0.0),
              Color(0xff0069ff).withOpacity(0.8),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Petrotica",
                      style: TextStyle(
                          fontSize: 45,
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Yatra",
                      style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  "Welcome to petrotic yatra",
                  style: TextStyle(color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 450,
                ),
                RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Text("Login with Google",style: TextStyle(fontSize: 15,fontFamily: 'Raleway',fontWeight: FontWeight.w300),)])),

                RaisedButton(
                  color: Colors.transparent,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xffbdbdbd)),
                      
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Text("Sign Up with Email",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'Raleway',fontWeight: FontWeight.w300),)])),

                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child:Text("Login as a guest",style:TextStyle(color:Colors.white,fontSize: 10,fontFamily: 'Raleway',fontWeight: FontWeight.w400),
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
