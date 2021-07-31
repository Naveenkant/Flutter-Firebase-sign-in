import 'package:authentification/Start.dart';
import 'package:authentification/chala.dart';
import 'package:authentification/screens/welcome/welcome_screen.dart';
import 'package:authentification/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:authentification/Start.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  // movetoeverybody() async {
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => Everybody()));
  // }

  movetowelcome() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: appBar(context),
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
            text: TextSpan(style: TextStyle(fontSize: 22), children: <TextSpan>[
              TextSpan(
                text: 'Quiz',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                  text: 'Maker',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue))
            ]),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.2,
          brightness: Brightness.light,
        ),
        body: Container(
          child: !isloggedin
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: RaisedButton(
                        // padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                        onPressed: signOut,
                        child: Text('Signout',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 200,
                      // child: Image(
                      //   image: AssetImage("images/welcome.jpg"),
                      //   fit: BoxFit.contain,
                      // ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                            "Hello ${user.displayName} ",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "email : ${user.email}",
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                      onPressed: movetowelcome,
                      child: Text('GO TO QUIZ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
        ));
  }
}
